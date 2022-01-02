import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:packer/models/models.dart';
import 'package:packer/repository.dart';

part 'pass_package_cubit.freezed.dart';

@singleton
class PassPackageCubit extends Cubit<PassPackageState> {
  PassPackageCubit(this._repository) : super(const PassPackageState.initial());

  final Repository _repository;

  Future<bool> fetchPackWith({required String barcode}) async {
    emit(const PassPackageState.inProgress());
    final res = await _repository.getPack(barcode);
    return res.fold(
      (re) {
        emit(PassPackageState.failure(message: re.message));
        return false;
      },
      (pack) {
        if (pack.passDate == null) {
          emit(PassPackageState.fetched(pack: pack));
          return true;
        } else {
          emit(const PassPackageState.failure(
            message: 'This package has been already passed',
          ));
          return false;
        }
      },
    );
  }

  Future<void> passPack(int id) async {
    emit(const PassPackageState.inProgress());
    final res = await _repository.passPack(id);
    res.fold(
      (re) => emit(PassPackageState.failure(message: re.message)),
      (_) => emit(const PassPackageState.success()),
    );
  }
}

@freezed
class PassPackageState with _$PassPackageState {
  const factory PassPackageState.initial() = PassPackageInitial;
  const factory PassPackageState.inProgress() = PassPackageInProgress;
  const factory PassPackageState.fetched({
    required Pack pack,
  }) = PassPackageFetched;
  const factory PassPackageState.success() = PassPackageSuccess;
  const factory PassPackageState.failure({
    @Default(null) String? message,
  }) = PassPackageFailure;
}
