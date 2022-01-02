import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:packer/models/models.dart';
import 'package:packer/repository.dart';

part 'add_package_cubit.freezed.dart';

@singleton
class AddPackageCubit extends Cubit<AddPackageState> {
  AddPackageCubit(this._repository) : super(const AddPackageState.initial());

  final Repository _repository;

  Future<bool> fetch() async {
    try {
      emit(const AddPackageState.inProgress());
      final res = await Future.wait([
        _repository.getDeliveryCompanies(),
        _repository.getSenders(),
        _repository.getReceivers(),
      ]);

      final deliveryCompanies = res[0] as List<DeliveryCompany>;
      final senders = res[1] as List<Sender>;
      final receivers = res[2] as List<Receiver>;

      emit(AddPackageState.fetched(
        deliveryCompanies: deliveryCompanies,
        senders: senders,
        receivers: receivers,
      ));
      return true;
    } on SocketException {
      emit(const AddPackageState.failure(
        message: 'There is a problem with your internet connection',
      ));
      return false;
    } catch (e, _) {
      if (e is DioError) {
        final String message = e.response?.data as String? ??
            e.response?.statusMessage ??
            e.message;
        emit(AddPackageState.failure(
          message: message,
        ));
      }
      emit(const AddPackageState.failure());
      return false;
    }
  }

  Future<void> addPackage({
    required String barcode,
    required int deliveryCompanyId,
    required int senderId,
    required int receiverId,
    String comment = '',
  }) async {
    emit(const AddPackageState.inProgress());
    final res = await _repository.addPackage(
      PackWrite(
        barcode: barcode,
        deliveryDate: DateTime.now(),
        deliveryCompany: deliveryCompanyId,
        sender: senderId,
        receiver: receiverId,
        comment: comment,
      ),
    );

    res.fold(
      (re) => emit(AddPackageState.failure(message: re.message)),
      (_) => emit(const AddPackageState.added()),
    );
  }

  Future<Sender?> addSender({
    required String name,
    required String city,
    required String addressLine,
    required String postCode,
  }) async {
    return await state.maybeMap(
      orElse: () {},
      fetched: (fetched) async {
        emit(const AddPackageState.inProgress());
        final res = await _repository.addSender(SenderWrite(
          name: name,
          city: city,
          addressLine: addressLine,
          postCode: postCode,
        ));

        return res.fold(
          (re) {
            emit(AddPackageState.failure(message: re.message));
          },
          (sender) {
            emit(fetched.copyWith(
              senders: fetched.senders..add(sender),
            ));
            return sender;
          },
        );
      },
    );
  }

  Future<Receiver?> addReceiver({
    required String name,
    required String emailAddress,
    String? phoneNumber,
    String? officeNumber,
  }) async {
    return await state.maybeMap(
      orElse: () {},
      fetched: (fetched) async {
        emit(const AddPackageState.inProgress());
        final res = await _repository.addReceiver(ReceiverWrite(
          name: name,
          emailAddress: emailAddress,
          phoneNumber: phoneNumber ?? '',
          officeNumber: officeNumber ?? '',
        ));

        return res.fold(
          (re) {
            emit(AddPackageState.failure(message: re.message));
          },
          (receiver) {
            emit(fetched.copyWith(
              receivers: fetched.receivers..add(receiver),
            ));
            return receiver;
          },
        );
      },
    );
  }
}

@freezed
class AddPackageState with _$AddPackageState {
  const factory AddPackageState.initial() = AddPackageInitial;
  const factory AddPackageState.inProgress() = AddPackageInProgress;
  const factory AddPackageState.fetched({
    @Default([]) List<DeliveryCompany> deliveryCompanies,
    @Default([]) List<Sender> senders,
    @Default([]) List<Receiver> receivers,
  }) = AddPackageFetched;
  const factory AddPackageState.added() = AddPackageAdded;
  const factory AddPackageState.failure({
    @Default(null) String? message,
  }) = AddPackageFailure;
}
