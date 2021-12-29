import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:packer/repository.dart';

part 'pass_package_cubit.freezed.dart';

@singleton
class PassPackageCubit extends Cubit<PassPackageState> {
  PassPackageCubit(this._repository) : super(const PassPackageState.initial());

  final Repository _repository;

  Future<void> passPackage(String barcode) async {
    emit(const PassPackageState.inProgress());
    final res = await _repository.passPackage(barcode);
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
  const factory PassPackageState.success() = PassPackageSuccess;
  const factory PassPackageState.failure({
    @Default(null) String? message,
  }) = PassPackageFailure;
}
