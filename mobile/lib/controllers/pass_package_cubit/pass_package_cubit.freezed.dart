// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pass_package_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PassPackageStateTearOff {
  const _$PassPackageStateTearOff();

  PassPackageInitial initial() {
    return const PassPackageInitial();
  }

  PassPackageInProgress inProgress() {
    return const PassPackageInProgress();
  }

  PassPackageFetched fetched({required Pack pack}) {
    return PassPackageFetched(
      pack: pack,
    );
  }

  PassPackageSuccess success() {
    return const PassPackageSuccess();
  }

  PassPackageFailure failure({String? message = null}) {
    return PassPackageFailure(
      message: message,
    );
  }
}

/// @nodoc
const $PassPackageState = _$PassPackageStateTearOff();

/// @nodoc
mixin _$PassPackageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Pack pack) fetched,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassPackageInitial value) initial,
    required TResult Function(PassPackageInProgress value) inProgress,
    required TResult Function(PassPackageFetched value) fetched,
    required TResult Function(PassPackageSuccess value) success,
    required TResult Function(PassPackageFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassPackageStateCopyWith<$Res> {
  factory $PassPackageStateCopyWith(
          PassPackageState value, $Res Function(PassPackageState) then) =
      _$PassPackageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PassPackageStateCopyWithImpl<$Res>
    implements $PassPackageStateCopyWith<$Res> {
  _$PassPackageStateCopyWithImpl(this._value, this._then);

  final PassPackageState _value;
  // ignore: unused_field
  final $Res Function(PassPackageState) _then;
}

/// @nodoc
abstract class $PassPackageInitialCopyWith<$Res> {
  factory $PassPackageInitialCopyWith(
          PassPackageInitial value, $Res Function(PassPackageInitial) then) =
      _$PassPackageInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PassPackageInitialCopyWithImpl<$Res>
    extends _$PassPackageStateCopyWithImpl<$Res>
    implements $PassPackageInitialCopyWith<$Res> {
  _$PassPackageInitialCopyWithImpl(
      PassPackageInitial _value, $Res Function(PassPackageInitial) _then)
      : super(_value, (v) => _then(v as PassPackageInitial));

  @override
  PassPackageInitial get _value => super._value as PassPackageInitial;
}

/// @nodoc

class _$PassPackageInitial implements PassPackageInitial {
  const _$PassPackageInitial();

  @override
  String toString() {
    return 'PassPackageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PassPackageInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Pack pack) fetched,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassPackageInitial value) initial,
    required TResult Function(PassPackageInProgress value) inProgress,
    required TResult Function(PassPackageFetched value) fetched,
    required TResult Function(PassPackageSuccess value) success,
    required TResult Function(PassPackageFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PassPackageInitial implements PassPackageState {
  const factory PassPackageInitial() = _$PassPackageInitial;
}

/// @nodoc
abstract class $PassPackageInProgressCopyWith<$Res> {
  factory $PassPackageInProgressCopyWith(PassPackageInProgress value,
          $Res Function(PassPackageInProgress) then) =
      _$PassPackageInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$PassPackageInProgressCopyWithImpl<$Res>
    extends _$PassPackageStateCopyWithImpl<$Res>
    implements $PassPackageInProgressCopyWith<$Res> {
  _$PassPackageInProgressCopyWithImpl(
      PassPackageInProgress _value, $Res Function(PassPackageInProgress) _then)
      : super(_value, (v) => _then(v as PassPackageInProgress));

  @override
  PassPackageInProgress get _value => super._value as PassPackageInProgress;
}

/// @nodoc

class _$PassPackageInProgress implements PassPackageInProgress {
  const _$PassPackageInProgress();

  @override
  String toString() {
    return 'PassPackageState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PassPackageInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Pack pack) fetched,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassPackageInitial value) initial,
    required TResult Function(PassPackageInProgress value) inProgress,
    required TResult Function(PassPackageFetched value) fetched,
    required TResult Function(PassPackageSuccess value) success,
    required TResult Function(PassPackageFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class PassPackageInProgress implements PassPackageState {
  const factory PassPackageInProgress() = _$PassPackageInProgress;
}

/// @nodoc
abstract class $PassPackageFetchedCopyWith<$Res> {
  factory $PassPackageFetchedCopyWith(
          PassPackageFetched value, $Res Function(PassPackageFetched) then) =
      _$PassPackageFetchedCopyWithImpl<$Res>;
  $Res call({Pack pack});

  $PackCopyWith<$Res> get pack;
}

/// @nodoc
class _$PassPackageFetchedCopyWithImpl<$Res>
    extends _$PassPackageStateCopyWithImpl<$Res>
    implements $PassPackageFetchedCopyWith<$Res> {
  _$PassPackageFetchedCopyWithImpl(
      PassPackageFetched _value, $Res Function(PassPackageFetched) _then)
      : super(_value, (v) => _then(v as PassPackageFetched));

  @override
  PassPackageFetched get _value => super._value as PassPackageFetched;

  @override
  $Res call({
    Object? pack = freezed,
  }) {
    return _then(PassPackageFetched(
      pack: pack == freezed
          ? _value.pack
          : pack // ignore: cast_nullable_to_non_nullable
              as Pack,
    ));
  }

  @override
  $PackCopyWith<$Res> get pack {
    return $PackCopyWith<$Res>(_value.pack, (value) {
      return _then(_value.copyWith(pack: value));
    });
  }
}

/// @nodoc

class _$PassPackageFetched implements PassPackageFetched {
  const _$PassPackageFetched({required this.pack});

  @override
  final Pack pack;

  @override
  String toString() {
    return 'PassPackageState.fetched(pack: $pack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassPackageFetched &&
            const DeepCollectionEquality().equals(other.pack, pack));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pack));

  @JsonKey(ignore: true)
  @override
  $PassPackageFetchedCopyWith<PassPackageFetched> get copyWith =>
      _$PassPackageFetchedCopyWithImpl<PassPackageFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Pack pack) fetched,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return fetched(pack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
  }) {
    return fetched?.call(pack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(pack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassPackageInitial value) initial,
    required TResult Function(PassPackageInProgress value) inProgress,
    required TResult Function(PassPackageFetched value) fetched,
    required TResult Function(PassPackageSuccess value) success,
    required TResult Function(PassPackageFailure value) failure,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class PassPackageFetched implements PassPackageState {
  const factory PassPackageFetched({required Pack pack}) = _$PassPackageFetched;

  Pack get pack;
  @JsonKey(ignore: true)
  $PassPackageFetchedCopyWith<PassPackageFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassPackageSuccessCopyWith<$Res> {
  factory $PassPackageSuccessCopyWith(
          PassPackageSuccess value, $Res Function(PassPackageSuccess) then) =
      _$PassPackageSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$PassPackageSuccessCopyWithImpl<$Res>
    extends _$PassPackageStateCopyWithImpl<$Res>
    implements $PassPackageSuccessCopyWith<$Res> {
  _$PassPackageSuccessCopyWithImpl(
      PassPackageSuccess _value, $Res Function(PassPackageSuccess) _then)
      : super(_value, (v) => _then(v as PassPackageSuccess));

  @override
  PassPackageSuccess get _value => super._value as PassPackageSuccess;
}

/// @nodoc

class _$PassPackageSuccess implements PassPackageSuccess {
  const _$PassPackageSuccess();

  @override
  String toString() {
    return 'PassPackageState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PassPackageSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Pack pack) fetched,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassPackageInitial value) initial,
    required TResult Function(PassPackageInProgress value) inProgress,
    required TResult Function(PassPackageFetched value) fetched,
    required TResult Function(PassPackageSuccess value) success,
    required TResult Function(PassPackageFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PassPackageSuccess implements PassPackageState {
  const factory PassPackageSuccess() = _$PassPackageSuccess;
}

/// @nodoc
abstract class $PassPackageFailureCopyWith<$Res> {
  factory $PassPackageFailureCopyWith(
          PassPackageFailure value, $Res Function(PassPackageFailure) then) =
      _$PassPackageFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$PassPackageFailureCopyWithImpl<$Res>
    extends _$PassPackageStateCopyWithImpl<$Res>
    implements $PassPackageFailureCopyWith<$Res> {
  _$PassPackageFailureCopyWithImpl(
      PassPackageFailure _value, $Res Function(PassPackageFailure) _then)
      : super(_value, (v) => _then(v as PassPackageFailure));

  @override
  PassPackageFailure get _value => super._value as PassPackageFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PassPackageFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PassPackageFailure implements PassPackageFailure {
  const _$PassPackageFailure({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'PassPackageState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassPackageFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PassPackageFailureCopyWith<PassPackageFailure> get copyWith =>
      _$PassPackageFailureCopyWithImpl<PassPackageFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Pack pack) fetched,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Pack pack)? fetched,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassPackageInitial value) initial,
    required TResult Function(PassPackageInProgress value) inProgress,
    required TResult Function(PassPackageFetched value) fetched,
    required TResult Function(PassPackageSuccess value) success,
    required TResult Function(PassPackageFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassPackageInitial value)? initial,
    TResult Function(PassPackageInProgress value)? inProgress,
    TResult Function(PassPackageFetched value)? fetched,
    TResult Function(PassPackageSuccess value)? success,
    TResult Function(PassPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PassPackageFailure implements PassPackageState {
  const factory PassPackageFailure({String? message}) = _$PassPackageFailure;

  String? get message;
  @JsonKey(ignore: true)
  $PassPackageFailureCopyWith<PassPackageFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
