import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:packer/models/models.dart';
import 'package:packer/repository.dart';

part 'edit_cubit.freezed.dart';

@singleton
class EditCubit extends Cubit<EditState> {
  EditCubit(this._repository) : super(const EditState.initial());

  final Repository _repository;

  Future<void> fetch() async {
    emit(const EditState.initial());
    try {
      final res = await Future.wait([
        _repository.getDeliveryCompanies(),
        _repository.getSenders(),
        _repository.getReceivers(),
        _repository.getPacks()
      ]);

      final deliveryCompanies = res[0] as List<DeliveryCompany>;
      final senders = res[1] as List<Sender>;
      final receivers = res[2] as List<Receiver>;
      final packsRes = res[3] as Either<RepositoryException, List<Pack>>;

      packsRes.fold(
        (re) => emit(EditState.failure(message: re.message)),
        (packs) => emit(EditState.fetched(
          deliveryCompanies: deliveryCompanies,
          senders: senders,
          receivers: receivers,
          packs: packs.where((pack) => pack.passDate == null).toList(),
        )),
      );
    } on SocketException {
      emit(const EditState.failure(
        message: 'There is a problem with your internet connection',
      ));
    } catch (e, _) {
      if (e is DioError) {
        final String message = e.response?.data as String? ??
            e.response?.statusMessage ??
            e.message;
        emit(EditState.failure(
          message: message,
        ));
      }
      emit(const EditState.failure());
    }
  }

  Future<void> editPack(int id, PackWrite packData) async {
    await state.maybeMap(
        orElse: () {},
        fetched: (fetched) async {
          emit(const EditState.initial());
          final res = await _repository.updatePack(id, packData);
          res.fold(
            (re) => emit(EditState.failure(message: re.message)),
            (_) => fetch(),
          );
        });
  }
}

@freezed
class EditState with _$EditState {
  const factory EditState.initial() = EditInitial;
  const factory EditState.fetched({
    @Default([]) List<Pack> packs,
    @Default([]) List<DeliveryCompany> deliveryCompanies,
    @Default([]) List<Receiver> receivers,
    @Default([]) List<Sender> senders,
  }) = EditFetched;
  const factory EditState.failure({
    @Default(null) String? message,
  }) = EditFailure;
}
