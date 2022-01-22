// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditStateTearOff {
  const _$EditStateTearOff();

  EditInitial initial() {
    return const EditInitial();
  }

  EditFetched fetched(
      {List<Pack> packs = const [],
      List<DeliveryCompany> deliveryCompanies = const [],
      List<Receiver> receivers = const [],
      List<Sender> senders = const []}) {
    return EditFetched(
      packs: packs,
      deliveryCompanies: deliveryCompanies,
      receivers: receivers,
      senders: senders,
    );
  }

  EditFailure failure({String? message = null}) {
    return EditFailure(
      message: message,
    );
  }
}

/// @nodoc
const $EditState = _$EditStateTearOff();

/// @nodoc
mixin _$EditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Pack> packs,
            List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers,
            List<Sender> senders)
        fetched,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs, List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers, List<Sender> senders)?
        fetched,
    TResult Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs, List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers, List<Sender> senders)?
        fetched,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditInitial value) initial,
    required TResult Function(EditFetched value) fetched,
    required TResult Function(EditFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditInitial value)? initial,
    TResult Function(EditFetched value)? fetched,
    TResult Function(EditFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditInitial value)? initial,
    TResult Function(EditFetched value)? fetched,
    TResult Function(EditFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStateCopyWith<$Res> {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) then) =
      _$EditStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditStateCopyWithImpl<$Res> implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._value, this._then);

  final EditState _value;
  // ignore: unused_field
  final $Res Function(EditState) _then;
}

/// @nodoc
abstract class $EditInitialCopyWith<$Res> {
  factory $EditInitialCopyWith(
          EditInitial value, $Res Function(EditInitial) then) =
      _$EditInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditInitialCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditInitialCopyWith<$Res> {
  _$EditInitialCopyWithImpl(
      EditInitial _value, $Res Function(EditInitial) _then)
      : super(_value, (v) => _then(v as EditInitial));

  @override
  EditInitial get _value => super._value as EditInitial;
}

/// @nodoc

class _$EditInitial implements EditInitial {
  const _$EditInitial();

  @override
  String toString() {
    return 'EditState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Pack> packs,
            List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers,
            List<Sender> senders)
        fetched,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs, List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers, List<Sender> senders)?
        fetched,
    TResult Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs, List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers, List<Sender> senders)?
        fetched,
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
    required TResult Function(EditInitial value) initial,
    required TResult Function(EditFetched value) fetched,
    required TResult Function(EditFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditInitial value)? initial,
    TResult Function(EditFetched value)? fetched,
    TResult Function(EditFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditInitial value)? initial,
    TResult Function(EditFetched value)? fetched,
    TResult Function(EditFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditInitial implements EditState {
  const factory EditInitial() = _$EditInitial;
}

/// @nodoc
abstract class $EditFetchedCopyWith<$Res> {
  factory $EditFetchedCopyWith(
          EditFetched value, $Res Function(EditFetched) then) =
      _$EditFetchedCopyWithImpl<$Res>;
  $Res call(
      {List<Pack> packs,
      List<DeliveryCompany> deliveryCompanies,
      List<Receiver> receivers,
      List<Sender> senders});
}

/// @nodoc
class _$EditFetchedCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditFetchedCopyWith<$Res> {
  _$EditFetchedCopyWithImpl(
      EditFetched _value, $Res Function(EditFetched) _then)
      : super(_value, (v) => _then(v as EditFetched));

  @override
  EditFetched get _value => super._value as EditFetched;

  @override
  $Res call({
    Object? packs = freezed,
    Object? deliveryCompanies = freezed,
    Object? receivers = freezed,
    Object? senders = freezed,
  }) {
    return _then(EditFetched(
      packs: packs == freezed
          ? _value.packs
          : packs // ignore: cast_nullable_to_non_nullable
              as List<Pack>,
      deliveryCompanies: deliveryCompanies == freezed
          ? _value.deliveryCompanies
          : deliveryCompanies // ignore: cast_nullable_to_non_nullable
              as List<DeliveryCompany>,
      receivers: receivers == freezed
          ? _value.receivers
          : receivers // ignore: cast_nullable_to_non_nullable
              as List<Receiver>,
      senders: senders == freezed
          ? _value.senders
          : senders // ignore: cast_nullable_to_non_nullable
              as List<Sender>,
    ));
  }
}

/// @nodoc

class _$EditFetched implements EditFetched {
  const _$EditFetched(
      {this.packs = const [],
      this.deliveryCompanies = const [],
      this.receivers = const [],
      this.senders = const []});

  @JsonKey()
  @override
  final List<Pack> packs;
  @JsonKey()
  @override
  final List<DeliveryCompany> deliveryCompanies;
  @JsonKey()
  @override
  final List<Receiver> receivers;
  @JsonKey()
  @override
  final List<Sender> senders;

  @override
  String toString() {
    return 'EditState.fetched(packs: $packs, deliveryCompanies: $deliveryCompanies, receivers: $receivers, senders: $senders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditFetched &&
            const DeepCollectionEquality().equals(other.packs, packs) &&
            const DeepCollectionEquality()
                .equals(other.deliveryCompanies, deliveryCompanies) &&
            const DeepCollectionEquality().equals(other.receivers, receivers) &&
            const DeepCollectionEquality().equals(other.senders, senders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(packs),
      const DeepCollectionEquality().hash(deliveryCompanies),
      const DeepCollectionEquality().hash(receivers),
      const DeepCollectionEquality().hash(senders));

  @JsonKey(ignore: true)
  @override
  $EditFetchedCopyWith<EditFetched> get copyWith =>
      _$EditFetchedCopyWithImpl<EditFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Pack> packs,
            List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers,
            List<Sender> senders)
        fetched,
    required TResult Function(String? message) failure,
  }) {
    return fetched(packs, deliveryCompanies, receivers, senders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs, List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers, List<Sender> senders)?
        fetched,
    TResult Function(String? message)? failure,
  }) {
    return fetched?.call(packs, deliveryCompanies, receivers, senders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs, List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers, List<Sender> senders)?
        fetched,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(packs, deliveryCompanies, receivers, senders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditInitial value) initial,
    required TResult Function(EditFetched value) fetched,
    required TResult Function(EditFailure value) failure,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditInitial value)? initial,
    TResult Function(EditFetched value)? fetched,
    TResult Function(EditFailure value)? failure,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditInitial value)? initial,
    TResult Function(EditFetched value)? fetched,
    TResult Function(EditFailure value)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class EditFetched implements EditState {
  const factory EditFetched(
      {List<Pack> packs,
      List<DeliveryCompany> deliveryCompanies,
      List<Receiver> receivers,
      List<Sender> senders}) = _$EditFetched;

  List<Pack> get packs;
  List<DeliveryCompany> get deliveryCompanies;
  List<Receiver> get receivers;
  List<Sender> get senders;
  @JsonKey(ignore: true)
  $EditFetchedCopyWith<EditFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditFailureCopyWith<$Res> {
  factory $EditFailureCopyWith(
          EditFailure value, $Res Function(EditFailure) then) =
      _$EditFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$EditFailureCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditFailureCopyWith<$Res> {
  _$EditFailureCopyWithImpl(
      EditFailure _value, $Res Function(EditFailure) _then)
      : super(_value, (v) => _then(v as EditFailure));

  @override
  EditFailure get _value => super._value as EditFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(EditFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditFailure implements EditFailure {
  const _$EditFailure({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'EditState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $EditFailureCopyWith<EditFailure> get copyWith =>
      _$EditFailureCopyWithImpl<EditFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Pack> packs,
            List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers,
            List<Sender> senders)
        fetched,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs, List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers, List<Sender> senders)?
        fetched,
    TResult Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Pack> packs, List<DeliveryCompany> deliveryCompanies,
            List<Receiver> receivers, List<Sender> senders)?
        fetched,
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
    required TResult Function(EditInitial value) initial,
    required TResult Function(EditFetched value) fetched,
    required TResult Function(EditFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditInitial value)? initial,
    TResult Function(EditFetched value)? fetched,
    TResult Function(EditFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditInitial value)? initial,
    TResult Function(EditFetched value)? fetched,
    TResult Function(EditFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class EditFailure implements EditState {
  const factory EditFailure({String? message}) = _$EditFailure;

  String? get message;
  @JsonKey(ignore: true)
  $EditFailureCopyWith<EditFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
