// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  HistoryInitial initial() {
    return const HistoryInitial();
  }

  HistoryFetched fetched({List<Pack> packs = const []}) {
    return HistoryFetched(
      packs: packs,
    );
  }

  HistoryFailure failure({String? message = null}) {
    return HistoryFailure(
      message: message,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Pack> packs) fetched,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs)? fetched,
    TResult Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs)? fetched,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistoryFetched value) fetched,
    required TResult Function(HistoryFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryFetched value)? fetched,
    TResult Function(HistoryFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryFetched value)? fetched,
    TResult Function(HistoryFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;
}

/// @nodoc
abstract class $HistoryInitialCopyWith<$Res> {
  factory $HistoryInitialCopyWith(
          HistoryInitial value, $Res Function(HistoryInitial) then) =
      _$HistoryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryInitialCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryInitialCopyWith<$Res> {
  _$HistoryInitialCopyWithImpl(
      HistoryInitial _value, $Res Function(HistoryInitial) _then)
      : super(_value, (v) => _then(v as HistoryInitial));

  @override
  HistoryInitial get _value => super._value as HistoryInitial;
}

/// @nodoc

class _$HistoryInitial implements HistoryInitial {
  const _$HistoryInitial();

  @override
  String toString() {
    return 'HistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HistoryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Pack> packs) fetched,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs)? fetched,
    TResult Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs)? fetched,
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
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistoryFetched value) fetched,
    required TResult Function(HistoryFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryFetched value)? fetched,
    TResult Function(HistoryFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryFetched value)? fetched,
    TResult Function(HistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoryInitial implements HistoryState {
  const factory HistoryInitial() = _$HistoryInitial;
}

/// @nodoc
abstract class $HistoryFetchedCopyWith<$Res> {
  factory $HistoryFetchedCopyWith(
          HistoryFetched value, $Res Function(HistoryFetched) then) =
      _$HistoryFetchedCopyWithImpl<$Res>;
  $Res call({List<Pack> packs});
}

/// @nodoc
class _$HistoryFetchedCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryFetchedCopyWith<$Res> {
  _$HistoryFetchedCopyWithImpl(
      HistoryFetched _value, $Res Function(HistoryFetched) _then)
      : super(_value, (v) => _then(v as HistoryFetched));

  @override
  HistoryFetched get _value => super._value as HistoryFetched;

  @override
  $Res call({
    Object? packs = freezed,
  }) {
    return _then(HistoryFetched(
      packs: packs == freezed
          ? _value.packs
          : packs // ignore: cast_nullable_to_non_nullable
              as List<Pack>,
    ));
  }
}

/// @nodoc

class _$HistoryFetched implements HistoryFetched {
  const _$HistoryFetched({this.packs = const []});

  @JsonKey()
  @override
  final List<Pack> packs;

  @override
  String toString() {
    return 'HistoryState.fetched(packs: $packs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HistoryFetched &&
            const DeepCollectionEquality().equals(other.packs, packs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(packs));

  @JsonKey(ignore: true)
  @override
  $HistoryFetchedCopyWith<HistoryFetched> get copyWith =>
      _$HistoryFetchedCopyWithImpl<HistoryFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Pack> packs) fetched,
    required TResult Function(String? message) failure,
  }) {
    return fetched(packs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs)? fetched,
    TResult Function(String? message)? failure,
  }) {
    return fetched?.call(packs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs)? fetched,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(packs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistoryFetched value) fetched,
    required TResult Function(HistoryFailure value) failure,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryFetched value)? fetched,
    TResult Function(HistoryFailure value)? failure,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryFetched value)? fetched,
    TResult Function(HistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class HistoryFetched implements HistoryState {
  const factory HistoryFetched({List<Pack> packs}) = _$HistoryFetched;

  List<Pack> get packs;
  @JsonKey(ignore: true)
  $HistoryFetchedCopyWith<HistoryFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryFailureCopyWith<$Res> {
  factory $HistoryFailureCopyWith(
          HistoryFailure value, $Res Function(HistoryFailure) then) =
      _$HistoryFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$HistoryFailureCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryFailureCopyWith<$Res> {
  _$HistoryFailureCopyWithImpl(
      HistoryFailure _value, $Res Function(HistoryFailure) _then)
      : super(_value, (v) => _then(v as HistoryFailure));

  @override
  HistoryFailure get _value => super._value as HistoryFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(HistoryFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HistoryFailure implements HistoryFailure {
  const _$HistoryFailure({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'HistoryState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HistoryFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $HistoryFailureCopyWith<HistoryFailure> get copyWith =>
      _$HistoryFailureCopyWithImpl<HistoryFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Pack> packs) fetched,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs)? fetched,
    TResult Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs)? fetched,
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
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistoryFetched value) fetched,
    required TResult Function(HistoryFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryFetched value)? fetched,
    TResult Function(HistoryFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryFetched value)? fetched,
    TResult Function(HistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HistoryFailure implements HistoryState {
  const factory HistoryFailure({String? message}) = _$HistoryFailure;

  String? get message;
  @JsonKey(ignore: true)
  $HistoryFailureCopyWith<HistoryFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
