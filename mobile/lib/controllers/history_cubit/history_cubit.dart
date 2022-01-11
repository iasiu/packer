import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:packer/models/models.dart';
import 'package:packer/repository.dart';

part 'history_cubit.freezed.dart';

@singleton
class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit(this._repository) : super(const HistoryState.initial());

  final Repository _repository;

  Future<void> fetch() async {
    emit(const HistoryState.initial());
    final res = await _repository.getPacks();

    res.fold(
      (re) => emit(HistoryState.failure(message: re.message)),
      (packs) => emit(HistoryState.fetched(packs: packs)),
    );
  }
}

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = HistoryInitial;
  const factory HistoryState.fetched({
    @Default([]) List<Pack> packs,
  }) = HistoryFetched;
  const factory HistoryState.failure({
    @Default(null) String? message,
  }) = HistoryFailure;
}
