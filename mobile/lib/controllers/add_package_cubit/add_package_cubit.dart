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

  Future<void> fetch() async {
    emit(const AddPackageState.initial());
    try {
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
    } catch (e, _) {
      if (e is DioError) {
        final String message = e.response?.data as String? ?? e.response?.statusMessage ?? e.message;
        emit(AddPackageState.failure(
          message: message,
        ));
      }
      emit(const AddPackageState.failure());
    }
  }

  Future<void> addPackage({
    required String barcode,
    required int deliveryCompanyId,
    required int senderId,
    required int receiverId,
    String comment = '',
  }) async {
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
}

@freezed
class AddPackageState with _$AddPackageState {
  const factory AddPackageState.initial() = AddPackageInitial;
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
