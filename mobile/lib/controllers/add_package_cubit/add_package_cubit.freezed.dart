// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_package_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddPackageStateTearOff {
  const _$AddPackageStateTearOff();

  AddPackageInitial initial() {
    return const AddPackageInitial();
  }

  AddPackageInProgress inProgress() {
    return const AddPackageInProgress();
  }

  AddPackageFetched fetched(
      {List<DeliveryCompany> deliveryCompanies = const [],
      List<Sender> senders = const [],
      List<Receiver> receivers = const []}) {
    return AddPackageFetched(
      deliveryCompanies: deliveryCompanies,
      senders: senders,
      receivers: receivers,
    );
  }

  AddPackageAdded added() {
    return const AddPackageAdded();
  }

  AddPackageFailure failure({String? message = null}) {
    return AddPackageFailure(
      message: message,
    );
  }
}

/// @nodoc
const $AddPackageState = _$AddPackageStateTearOff();

/// @nodoc
mixin _$AddPackageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)
        fetched,
    required TResult Function() added,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPackageInitial value) initial,
    required TResult Function(AddPackageInProgress value) inProgress,
    required TResult Function(AddPackageFetched value) fetched,
    required TResult Function(AddPackageAdded value) added,
    required TResult Function(AddPackageFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPackageStateCopyWith<$Res> {
  factory $AddPackageStateCopyWith(
          AddPackageState value, $Res Function(AddPackageState) then) =
      _$AddPackageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddPackageStateCopyWithImpl<$Res>
    implements $AddPackageStateCopyWith<$Res> {
  _$AddPackageStateCopyWithImpl(this._value, this._then);

  final AddPackageState _value;
  // ignore: unused_field
  final $Res Function(AddPackageState) _then;
}

/// @nodoc
abstract class $AddPackageInitialCopyWith<$Res> {
  factory $AddPackageInitialCopyWith(
          AddPackageInitial value, $Res Function(AddPackageInitial) then) =
      _$AddPackageInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddPackageInitialCopyWithImpl<$Res>
    extends _$AddPackageStateCopyWithImpl<$Res>
    implements $AddPackageInitialCopyWith<$Res> {
  _$AddPackageInitialCopyWithImpl(
      AddPackageInitial _value, $Res Function(AddPackageInitial) _then)
      : super(_value, (v) => _then(v as AddPackageInitial));

  @override
  AddPackageInitial get _value => super._value as AddPackageInitial;
}

/// @nodoc

class _$AddPackageInitial implements AddPackageInitial {
  const _$AddPackageInitial();

  @override
  String toString() {
    return 'AddPackageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddPackageInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)
        fetched,
    required TResult Function() added,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
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
    required TResult Function(AddPackageInitial value) initial,
    required TResult Function(AddPackageInProgress value) inProgress,
    required TResult Function(AddPackageFetched value) fetched,
    required TResult Function(AddPackageAdded value) added,
    required TResult Function(AddPackageFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddPackageInitial implements AddPackageState {
  const factory AddPackageInitial() = _$AddPackageInitial;
}

/// @nodoc
abstract class $AddPackageInProgressCopyWith<$Res> {
  factory $AddPackageInProgressCopyWith(AddPackageInProgress value,
          $Res Function(AddPackageInProgress) then) =
      _$AddPackageInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddPackageInProgressCopyWithImpl<$Res>
    extends _$AddPackageStateCopyWithImpl<$Res>
    implements $AddPackageInProgressCopyWith<$Res> {
  _$AddPackageInProgressCopyWithImpl(
      AddPackageInProgress _value, $Res Function(AddPackageInProgress) _then)
      : super(_value, (v) => _then(v as AddPackageInProgress));

  @override
  AddPackageInProgress get _value => super._value as AddPackageInProgress;
}

/// @nodoc

class _$AddPackageInProgress implements AddPackageInProgress {
  const _$AddPackageInProgress();

  @override
  String toString() {
    return 'AddPackageState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddPackageInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)
        fetched,
    required TResult Function() added,
    required TResult Function(String? message) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
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
    required TResult Function(AddPackageInitial value) initial,
    required TResult Function(AddPackageInProgress value) inProgress,
    required TResult Function(AddPackageFetched value) fetched,
    required TResult Function(AddPackageAdded value) added,
    required TResult Function(AddPackageFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class AddPackageInProgress implements AddPackageState {
  const factory AddPackageInProgress() = _$AddPackageInProgress;
}

/// @nodoc
abstract class $AddPackageFetchedCopyWith<$Res> {
  factory $AddPackageFetchedCopyWith(
          AddPackageFetched value, $Res Function(AddPackageFetched) then) =
      _$AddPackageFetchedCopyWithImpl<$Res>;
  $Res call(
      {List<DeliveryCompany> deliveryCompanies,
      List<Sender> senders,
      List<Receiver> receivers});
}

/// @nodoc
class _$AddPackageFetchedCopyWithImpl<$Res>
    extends _$AddPackageStateCopyWithImpl<$Res>
    implements $AddPackageFetchedCopyWith<$Res> {
  _$AddPackageFetchedCopyWithImpl(
      AddPackageFetched _value, $Res Function(AddPackageFetched) _then)
      : super(_value, (v) => _then(v as AddPackageFetched));

  @override
  AddPackageFetched get _value => super._value as AddPackageFetched;

  @override
  $Res call({
    Object? deliveryCompanies = freezed,
    Object? senders = freezed,
    Object? receivers = freezed,
  }) {
    return _then(AddPackageFetched(
      deliveryCompanies: deliveryCompanies == freezed
          ? _value.deliveryCompanies
          : deliveryCompanies // ignore: cast_nullable_to_non_nullable
              as List<DeliveryCompany>,
      senders: senders == freezed
          ? _value.senders
          : senders // ignore: cast_nullable_to_non_nullable
              as List<Sender>,
      receivers: receivers == freezed
          ? _value.receivers
          : receivers // ignore: cast_nullable_to_non_nullable
              as List<Receiver>,
    ));
  }
}

/// @nodoc

class _$AddPackageFetched implements AddPackageFetched {
  const _$AddPackageFetched(
      {this.deliveryCompanies = const [],
      this.senders = const [],
      this.receivers = const []});

  @JsonKey()
  @override
  final List<DeliveryCompany> deliveryCompanies;
  @JsonKey()
  @override
  final List<Sender> senders;
  @JsonKey()
  @override
  final List<Receiver> receivers;

  @override
  String toString() {
    return 'AddPackageState.fetched(deliveryCompanies: $deliveryCompanies, senders: $senders, receivers: $receivers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddPackageFetched &&
            const DeepCollectionEquality()
                .equals(other.deliveryCompanies, deliveryCompanies) &&
            const DeepCollectionEquality().equals(other.senders, senders) &&
            const DeepCollectionEquality().equals(other.receivers, receivers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deliveryCompanies),
      const DeepCollectionEquality().hash(senders),
      const DeepCollectionEquality().hash(receivers));

  @JsonKey(ignore: true)
  @override
  $AddPackageFetchedCopyWith<AddPackageFetched> get copyWith =>
      _$AddPackageFetchedCopyWithImpl<AddPackageFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)
        fetched,
    required TResult Function() added,
    required TResult Function(String? message) failure,
  }) {
    return fetched(deliveryCompanies, senders, receivers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
  }) {
    return fetched?.call(deliveryCompanies, senders, receivers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(deliveryCompanies, senders, receivers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPackageInitial value) initial,
    required TResult Function(AddPackageInProgress value) inProgress,
    required TResult Function(AddPackageFetched value) fetched,
    required TResult Function(AddPackageAdded value) added,
    required TResult Function(AddPackageFailure value) failure,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class AddPackageFetched implements AddPackageState {
  const factory AddPackageFetched(
      {List<DeliveryCompany> deliveryCompanies,
      List<Sender> senders,
      List<Receiver> receivers}) = _$AddPackageFetched;

  List<DeliveryCompany> get deliveryCompanies;
  List<Sender> get senders;
  List<Receiver> get receivers;
  @JsonKey(ignore: true)
  $AddPackageFetchedCopyWith<AddPackageFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPackageAddedCopyWith<$Res> {
  factory $AddPackageAddedCopyWith(
          AddPackageAdded value, $Res Function(AddPackageAdded) then) =
      _$AddPackageAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddPackageAddedCopyWithImpl<$Res>
    extends _$AddPackageStateCopyWithImpl<$Res>
    implements $AddPackageAddedCopyWith<$Res> {
  _$AddPackageAddedCopyWithImpl(
      AddPackageAdded _value, $Res Function(AddPackageAdded) _then)
      : super(_value, (v) => _then(v as AddPackageAdded));

  @override
  AddPackageAdded get _value => super._value as AddPackageAdded;
}

/// @nodoc

class _$AddPackageAdded implements AddPackageAdded {
  const _$AddPackageAdded();

  @override
  String toString() {
    return 'AddPackageState.added()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddPackageAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)
        fetched,
    required TResult Function() added,
    required TResult Function(String? message) failure,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPackageInitial value) initial,
    required TResult Function(AddPackageInProgress value) inProgress,
    required TResult Function(AddPackageFetched value) fetched,
    required TResult Function(AddPackageAdded value) added,
    required TResult Function(AddPackageFailure value) failure,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class AddPackageAdded implements AddPackageState {
  const factory AddPackageAdded() = _$AddPackageAdded;
}

/// @nodoc
abstract class $AddPackageFailureCopyWith<$Res> {
  factory $AddPackageFailureCopyWith(
          AddPackageFailure value, $Res Function(AddPackageFailure) then) =
      _$AddPackageFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$AddPackageFailureCopyWithImpl<$Res>
    extends _$AddPackageStateCopyWithImpl<$Res>
    implements $AddPackageFailureCopyWith<$Res> {
  _$AddPackageFailureCopyWithImpl(
      AddPackageFailure _value, $Res Function(AddPackageFailure) _then)
      : super(_value, (v) => _then(v as AddPackageFailure));

  @override
  AddPackageFailure get _value => super._value as AddPackageFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AddPackageFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddPackageFailure implements AddPackageFailure {
  const _$AddPackageFailure({this.message = null});

  @JsonKey()
  @override
  final String? message;

  @override
  String toString() {
    return 'AddPackageState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddPackageFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AddPackageFailureCopyWith<AddPackageFailure> get copyWith =>
      _$AddPackageFailureCopyWithImpl<AddPackageFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)
        fetched,
    required TResult Function() added,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
    TResult Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<DeliveryCompany> deliveryCompanies,
            List<Sender> senders, List<Receiver> receivers)?
        fetched,
    TResult Function()? added,
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
    required TResult Function(AddPackageInitial value) initial,
    required TResult Function(AddPackageInProgress value) inProgress,
    required TResult Function(AddPackageFetched value) fetched,
    required TResult Function(AddPackageAdded value) added,
    required TResult Function(AddPackageFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPackageInitial value)? initial,
    TResult Function(AddPackageInProgress value)? inProgress,
    TResult Function(AddPackageFetched value)? fetched,
    TResult Function(AddPackageAdded value)? added,
    TResult Function(AddPackageFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AddPackageFailure implements AddPackageState {
  const factory AddPackageFailure({String? message}) = _$AddPackageFailure;

  String? get message;
  @JsonKey(ignore: true)
  $AddPackageFailureCopyWith<AddPackageFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
