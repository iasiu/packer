// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryCompany _$DeliveryCompanyFromJson(Map<String, dynamic> json) {
  return _DeliveryCompany.fromJson(json);
}

/// @nodoc
class _$DeliveryCompanyTearOff {
  const _$DeliveryCompanyTearOff();

  _DeliveryCompany call({required int id, required String name}) {
    return _DeliveryCompany(
      id: id,
      name: name,
    );
  }

  DeliveryCompany fromJson(Map<String, Object?> json) {
    return DeliveryCompany.fromJson(json);
  }
}

/// @nodoc
const $DeliveryCompany = _$DeliveryCompanyTearOff();

/// @nodoc
mixin _$DeliveryCompany {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCompanyCopyWith<DeliveryCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCompanyCopyWith<$Res> {
  factory $DeliveryCompanyCopyWith(
          DeliveryCompany value, $Res Function(DeliveryCompany) then) =
      _$DeliveryCompanyCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$DeliveryCompanyCopyWithImpl<$Res>
    implements $DeliveryCompanyCopyWith<$Res> {
  _$DeliveryCompanyCopyWithImpl(this._value, this._then);

  final DeliveryCompany _value;
  // ignore: unused_field
  final $Res Function(DeliveryCompany) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryCompanyCopyWith<$Res>
    implements $DeliveryCompanyCopyWith<$Res> {
  factory _$DeliveryCompanyCopyWith(
          _DeliveryCompany value, $Res Function(_DeliveryCompany) then) =
      __$DeliveryCompanyCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$DeliveryCompanyCopyWithImpl<$Res>
    extends _$DeliveryCompanyCopyWithImpl<$Res>
    implements _$DeliveryCompanyCopyWith<$Res> {
  __$DeliveryCompanyCopyWithImpl(
      _DeliveryCompany _value, $Res Function(_DeliveryCompany) _then)
      : super(_value, (v) => _then(v as _DeliveryCompany));

  @override
  _DeliveryCompany get _value => super._value as _DeliveryCompany;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_DeliveryCompany(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryCompany implements _DeliveryCompany {
  const _$_DeliveryCompany({required this.id, required this.name});

  factory _$_DeliveryCompany.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryCompanyFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'DeliveryCompany(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryCompany &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$DeliveryCompanyCopyWith<_DeliveryCompany> get copyWith =>
      __$DeliveryCompanyCopyWithImpl<_DeliveryCompany>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryCompanyToJson(this);
  }
}

abstract class _DeliveryCompany implements DeliveryCompany {
  const factory _DeliveryCompany({required int id, required String name}) =
      _$_DeliveryCompany;

  factory _DeliveryCompany.fromJson(Map<String, dynamic> json) =
      _$_DeliveryCompany.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$DeliveryCompanyCopyWith<_DeliveryCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

Sender _$SenderFromJson(Map<String, dynamic> json) {
  return _Sender.fromJson(json);
}

/// @nodoc
class _$SenderTearOff {
  const _$SenderTearOff();

  _Sender call(
      {required int id,
      required String name,
      required String city,
      required String addressLine,
      required String postCode}) {
    return _Sender(
      id: id,
      name: name,
      city: city,
      addressLine: addressLine,
      postCode: postCode,
    );
  }

  Sender fromJson(Map<String, Object?> json) {
    return Sender.fromJson(json);
  }
}

/// @nodoc
const $Sender = _$SenderTearOff();

/// @nodoc
mixin _$Sender {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get addressLine => throw _privateConstructorUsedError;
  String get postCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SenderCopyWith<Sender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderCopyWith<$Res> {
  factory $SenderCopyWith(Sender value, $Res Function(Sender) then) =
      _$SenderCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String city, String addressLine, String postCode});
}

/// @nodoc
class _$SenderCopyWithImpl<$Res> implements $SenderCopyWith<$Res> {
  _$SenderCopyWithImpl(this._value, this._then);

  final Sender _value;
  // ignore: unused_field
  final $Res Function(Sender) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? addressLine = freezed,
    Object? postCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine: addressLine == freezed
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SenderCopyWith<$Res> implements $SenderCopyWith<$Res> {
  factory _$SenderCopyWith(_Sender value, $Res Function(_Sender) then) =
      __$SenderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String city, String addressLine, String postCode});
}

/// @nodoc
class __$SenderCopyWithImpl<$Res> extends _$SenderCopyWithImpl<$Res>
    implements _$SenderCopyWith<$Res> {
  __$SenderCopyWithImpl(_Sender _value, $Res Function(_Sender) _then)
      : super(_value, (v) => _then(v as _Sender));

  @override
  _Sender get _value => super._value as _Sender;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? addressLine = freezed,
    Object? postCode = freezed,
  }) {
    return _then(_Sender(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine: addressLine == freezed
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sender implements _Sender {
  const _$_Sender(
      {required this.id,
      required this.name,
      required this.city,
      required this.addressLine,
      required this.postCode});

  factory _$_Sender.fromJson(Map<String, dynamic> json) =>
      _$$_SenderFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String city;
  @override
  final String addressLine;
  @override
  final String postCode;

  @override
  String toString() {
    return 'Sender(id: $id, name: $name, city: $city, addressLine: $addressLine, postCode: $postCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sender &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.addressLine, addressLine) &&
            const DeepCollectionEquality().equals(other.postCode, postCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(addressLine),
      const DeepCollectionEquality().hash(postCode));

  @JsonKey(ignore: true)
  @override
  _$SenderCopyWith<_Sender> get copyWith =>
      __$SenderCopyWithImpl<_Sender>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SenderToJson(this);
  }
}

abstract class _Sender implements Sender {
  const factory _Sender(
      {required int id,
      required String name,
      required String city,
      required String addressLine,
      required String postCode}) = _$_Sender;

  factory _Sender.fromJson(Map<String, dynamic> json) = _$_Sender.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get city;
  @override
  String get addressLine;
  @override
  String get postCode;
  @override
  @JsonKey(ignore: true)
  _$SenderCopyWith<_Sender> get copyWith => throw _privateConstructorUsedError;
}

SenderWrite _$SenderWriteFromJson(Map<String, dynamic> json) {
  return _SenderWrite.fromJson(json);
}

/// @nodoc
class _$SenderWriteTearOff {
  const _$SenderWriteTearOff();

  _SenderWrite call(
      {required String name,
      required String city,
      required String addressLine,
      required String postCode}) {
    return _SenderWrite(
      name: name,
      city: city,
      addressLine: addressLine,
      postCode: postCode,
    );
  }

  SenderWrite fromJson(Map<String, Object?> json) {
    return SenderWrite.fromJson(json);
  }
}

/// @nodoc
const $SenderWrite = _$SenderWriteTearOff();

/// @nodoc
mixin _$SenderWrite {
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get addressLine => throw _privateConstructorUsedError;
  String get postCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SenderWriteCopyWith<SenderWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderWriteCopyWith<$Res> {
  factory $SenderWriteCopyWith(
          SenderWrite value, $Res Function(SenderWrite) then) =
      _$SenderWriteCopyWithImpl<$Res>;
  $Res call({String name, String city, String addressLine, String postCode});
}

/// @nodoc
class _$SenderWriteCopyWithImpl<$Res> implements $SenderWriteCopyWith<$Res> {
  _$SenderWriteCopyWithImpl(this._value, this._then);

  final SenderWrite _value;
  // ignore: unused_field
  final $Res Function(SenderWrite) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? addressLine = freezed,
    Object? postCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine: addressLine == freezed
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SenderWriteCopyWith<$Res>
    implements $SenderWriteCopyWith<$Res> {
  factory _$SenderWriteCopyWith(
          _SenderWrite value, $Res Function(_SenderWrite) then) =
      __$SenderWriteCopyWithImpl<$Res>;
  @override
  $Res call({String name, String city, String addressLine, String postCode});
}

/// @nodoc
class __$SenderWriteCopyWithImpl<$Res> extends _$SenderWriteCopyWithImpl<$Res>
    implements _$SenderWriteCopyWith<$Res> {
  __$SenderWriteCopyWithImpl(
      _SenderWrite _value, $Res Function(_SenderWrite) _then)
      : super(_value, (v) => _then(v as _SenderWrite));

  @override
  _SenderWrite get _value => super._value as _SenderWrite;

  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? addressLine = freezed,
    Object? postCode = freezed,
  }) {
    return _then(_SenderWrite(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine: addressLine == freezed
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SenderWrite implements _SenderWrite {
  const _$_SenderWrite(
      {required this.name,
      required this.city,
      required this.addressLine,
      required this.postCode});

  factory _$_SenderWrite.fromJson(Map<String, dynamic> json) =>
      _$$_SenderWriteFromJson(json);

  @override
  final String name;
  @override
  final String city;
  @override
  final String addressLine;
  @override
  final String postCode;

  @override
  String toString() {
    return 'SenderWrite(name: $name, city: $city, addressLine: $addressLine, postCode: $postCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SenderWrite &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.addressLine, addressLine) &&
            const DeepCollectionEquality().equals(other.postCode, postCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(addressLine),
      const DeepCollectionEquality().hash(postCode));

  @JsonKey(ignore: true)
  @override
  _$SenderWriteCopyWith<_SenderWrite> get copyWith =>
      __$SenderWriteCopyWithImpl<_SenderWrite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SenderWriteToJson(this);
  }
}

abstract class _SenderWrite implements SenderWrite {
  const factory _SenderWrite(
      {required String name,
      required String city,
      required String addressLine,
      required String postCode}) = _$_SenderWrite;

  factory _SenderWrite.fromJson(Map<String, dynamic> json) =
      _$_SenderWrite.fromJson;

  @override
  String get name;
  @override
  String get city;
  @override
  String get addressLine;
  @override
  String get postCode;
  @override
  @JsonKey(ignore: true)
  _$SenderWriteCopyWith<_SenderWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

Receiver _$ReceiverFromJson(Map<String, dynamic> json) {
  return _Receiver.fromJson(json);
}

/// @nodoc
class _$ReceiverTearOff {
  const _$ReceiverTearOff();

  _Receiver call(
      {required int id,
      required String name,
      required String emailAddress,
      String phoneNumber = '',
      String officeNumber = ''}) {
    return _Receiver(
      id: id,
      name: name,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      officeNumber: officeNumber,
    );
  }

  Receiver fromJson(Map<String, Object?> json) {
    return Receiver.fromJson(json);
  }
}

/// @nodoc
const $Receiver = _$ReceiverTearOff();

/// @nodoc
mixin _$Receiver {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get officeNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiverCopyWith<Receiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverCopyWith<$Res> {
  factory $ReceiverCopyWith(Receiver value, $Res Function(Receiver) then) =
      _$ReceiverCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String emailAddress,
      String phoneNumber,
      String officeNumber});
}

/// @nodoc
class _$ReceiverCopyWithImpl<$Res> implements $ReceiverCopyWith<$Res> {
  _$ReceiverCopyWithImpl(this._value, this._then);

  final Receiver _value;
  // ignore: unused_field
  final $Res Function(Receiver) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? officeNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      officeNumber: officeNumber == freezed
          ? _value.officeNumber
          : officeNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReceiverCopyWith<$Res> implements $ReceiverCopyWith<$Res> {
  factory _$ReceiverCopyWith(_Receiver value, $Res Function(_Receiver) then) =
      __$ReceiverCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String emailAddress,
      String phoneNumber,
      String officeNumber});
}

/// @nodoc
class __$ReceiverCopyWithImpl<$Res> extends _$ReceiverCopyWithImpl<$Res>
    implements _$ReceiverCopyWith<$Res> {
  __$ReceiverCopyWithImpl(_Receiver _value, $Res Function(_Receiver) _then)
      : super(_value, (v) => _then(v as _Receiver));

  @override
  _Receiver get _value => super._value as _Receiver;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? officeNumber = freezed,
  }) {
    return _then(_Receiver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      officeNumber: officeNumber == freezed
          ? _value.officeNumber
          : officeNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Receiver implements _Receiver {
  const _$_Receiver(
      {required this.id,
      required this.name,
      required this.emailAddress,
      this.phoneNumber = '',
      this.officeNumber = ''});

  factory _$_Receiver.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiverFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String emailAddress;
  @JsonKey()
  @override
  final String phoneNumber;
  @JsonKey()
  @override
  final String officeNumber;

  @override
  String toString() {
    return 'Receiver(id: $id, name: $name, emailAddress: $emailAddress, phoneNumber: $phoneNumber, officeNumber: $officeNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Receiver &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.officeNumber, officeNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(officeNumber));

  @JsonKey(ignore: true)
  @override
  _$ReceiverCopyWith<_Receiver> get copyWith =>
      __$ReceiverCopyWithImpl<_Receiver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiverToJson(this);
  }
}

abstract class _Receiver implements Receiver {
  const factory _Receiver(
      {required int id,
      required String name,
      required String emailAddress,
      String phoneNumber,
      String officeNumber}) = _$_Receiver;

  factory _Receiver.fromJson(Map<String, dynamic> json) = _$_Receiver.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get emailAddress;
  @override
  String get phoneNumber;
  @override
  String get officeNumber;
  @override
  @JsonKey(ignore: true)
  _$ReceiverCopyWith<_Receiver> get copyWith =>
      throw _privateConstructorUsedError;
}

ReceiverWrite _$ReceiverWriteFromJson(Map<String, dynamic> json) {
  return _ReceiverWrite.fromJson(json);
}

/// @nodoc
class _$ReceiverWriteTearOff {
  const _$ReceiverWriteTearOff();

  _ReceiverWrite call(
      {required String name,
      required String emailAddress,
      String phoneNumber = '',
      String officeNumber = ''}) {
    return _ReceiverWrite(
      name: name,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      officeNumber: officeNumber,
    );
  }

  ReceiverWrite fromJson(Map<String, Object?> json) {
    return ReceiverWrite.fromJson(json);
  }
}

/// @nodoc
const $ReceiverWrite = _$ReceiverWriteTearOff();

/// @nodoc
mixin _$ReceiverWrite {
  String get name => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get officeNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiverWriteCopyWith<ReceiverWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverWriteCopyWith<$Res> {
  factory $ReceiverWriteCopyWith(
          ReceiverWrite value, $Res Function(ReceiverWrite) then) =
      _$ReceiverWriteCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String emailAddress,
      String phoneNumber,
      String officeNumber});
}

/// @nodoc
class _$ReceiverWriteCopyWithImpl<$Res>
    implements $ReceiverWriteCopyWith<$Res> {
  _$ReceiverWriteCopyWithImpl(this._value, this._then);

  final ReceiverWrite _value;
  // ignore: unused_field
  final $Res Function(ReceiverWrite) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? officeNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      officeNumber: officeNumber == freezed
          ? _value.officeNumber
          : officeNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReceiverWriteCopyWith<$Res>
    implements $ReceiverWriteCopyWith<$Res> {
  factory _$ReceiverWriteCopyWith(
          _ReceiverWrite value, $Res Function(_ReceiverWrite) then) =
      __$ReceiverWriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String emailAddress,
      String phoneNumber,
      String officeNumber});
}

/// @nodoc
class __$ReceiverWriteCopyWithImpl<$Res>
    extends _$ReceiverWriteCopyWithImpl<$Res>
    implements _$ReceiverWriteCopyWith<$Res> {
  __$ReceiverWriteCopyWithImpl(
      _ReceiverWrite _value, $Res Function(_ReceiverWrite) _then)
      : super(_value, (v) => _then(v as _ReceiverWrite));

  @override
  _ReceiverWrite get _value => super._value as _ReceiverWrite;

  @override
  $Res call({
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? officeNumber = freezed,
  }) {
    return _then(_ReceiverWrite(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      officeNumber: officeNumber == freezed
          ? _value.officeNumber
          : officeNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceiverWrite implements _ReceiverWrite {
  const _$_ReceiverWrite(
      {required this.name,
      required this.emailAddress,
      this.phoneNumber = '',
      this.officeNumber = ''});

  factory _$_ReceiverWrite.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiverWriteFromJson(json);

  @override
  final String name;
  @override
  final String emailAddress;
  @JsonKey()
  @override
  final String phoneNumber;
  @JsonKey()
  @override
  final String officeNumber;

  @override
  String toString() {
    return 'ReceiverWrite(name: $name, emailAddress: $emailAddress, phoneNumber: $phoneNumber, officeNumber: $officeNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceiverWrite &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.officeNumber, officeNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(officeNumber));

  @JsonKey(ignore: true)
  @override
  _$ReceiverWriteCopyWith<_ReceiverWrite> get copyWith =>
      __$ReceiverWriteCopyWithImpl<_ReceiverWrite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiverWriteToJson(this);
  }
}

abstract class _ReceiverWrite implements ReceiverWrite {
  const factory _ReceiverWrite(
      {required String name,
      required String emailAddress,
      String phoneNumber,
      String officeNumber}) = _$_ReceiverWrite;

  factory _ReceiverWrite.fromJson(Map<String, dynamic> json) =
      _$_ReceiverWrite.fromJson;

  @override
  String get name;
  @override
  String get emailAddress;
  @override
  String get phoneNumber;
  @override
  String get officeNumber;
  @override
  @JsonKey(ignore: true)
  _$ReceiverWriteCopyWith<_ReceiverWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

Pack _$PackFromJson(Map<String, dynamic> json) {
  return _Pack.fromJson(json);
}

/// @nodoc
class _$PackTearOff {
  const _$PackTearOff();

  _Pack call(
      {required int id,
      String barcode = '',
      required DateTime deliveryDate,
      DateTime? passDate,
      required DeliveryCompany deliveryCompany,
      required Sender sender,
      required Receiver receiver,
      String comment = ''}) {
    return _Pack(
      id: id,
      barcode: barcode,
      deliveryDate: deliveryDate,
      passDate: passDate,
      deliveryCompany: deliveryCompany,
      sender: sender,
      receiver: receiver,
      comment: comment,
    );
  }

  Pack fromJson(Map<String, Object?> json) {
    return Pack.fromJson(json);
  }
}

/// @nodoc
const $Pack = _$PackTearOff();

/// @nodoc
mixin _$Pack {
  int get id => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  DateTime? get passDate => throw _privateConstructorUsedError;
  DeliveryCompany get deliveryCompany => throw _privateConstructorUsedError;
  Sender get sender => throw _privateConstructorUsedError;
  Receiver get receiver => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackCopyWith<Pack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackCopyWith<$Res> {
  factory $PackCopyWith(Pack value, $Res Function(Pack) then) =
      _$PackCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String barcode,
      DateTime deliveryDate,
      DateTime? passDate,
      DeliveryCompany deliveryCompany,
      Sender sender,
      Receiver receiver,
      String comment});

  $DeliveryCompanyCopyWith<$Res> get deliveryCompany;
  $SenderCopyWith<$Res> get sender;
  $ReceiverCopyWith<$Res> get receiver;
}

/// @nodoc
class _$PackCopyWithImpl<$Res> implements $PackCopyWith<$Res> {
  _$PackCopyWithImpl(this._value, this._then);

  final Pack _value;
  // ignore: unused_field
  final $Res Function(Pack) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? deliveryDate = freezed,
    Object? passDate = freezed,
    Object? deliveryCompany = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      passDate: passDate == freezed
          ? _value.passDate
          : passDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryCompany: deliveryCompany == freezed
          ? _value.deliveryCompany
          : deliveryCompany // ignore: cast_nullable_to_non_nullable
              as DeliveryCompany,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Receiver,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DeliveryCompanyCopyWith<$Res> get deliveryCompany {
    return $DeliveryCompanyCopyWith<$Res>(_value.deliveryCompany, (value) {
      return _then(_value.copyWith(deliveryCompany: value));
    });
  }

  @override
  $SenderCopyWith<$Res> get sender {
    return $SenderCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $ReceiverCopyWith<$Res> get receiver {
    return $ReceiverCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$PackCopyWith<$Res> implements $PackCopyWith<$Res> {
  factory _$PackCopyWith(_Pack value, $Res Function(_Pack) then) =
      __$PackCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String barcode,
      DateTime deliveryDate,
      DateTime? passDate,
      DeliveryCompany deliveryCompany,
      Sender sender,
      Receiver receiver,
      String comment});

  @override
  $DeliveryCompanyCopyWith<$Res> get deliveryCompany;
  @override
  $SenderCopyWith<$Res> get sender;
  @override
  $ReceiverCopyWith<$Res> get receiver;
}

/// @nodoc
class __$PackCopyWithImpl<$Res> extends _$PackCopyWithImpl<$Res>
    implements _$PackCopyWith<$Res> {
  __$PackCopyWithImpl(_Pack _value, $Res Function(_Pack) _then)
      : super(_value, (v) => _then(v as _Pack));

  @override
  _Pack get _value => super._value as _Pack;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? deliveryDate = freezed,
    Object? passDate = freezed,
    Object? deliveryCompany = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? comment = freezed,
  }) {
    return _then(_Pack(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      passDate: passDate == freezed
          ? _value.passDate
          : passDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryCompany: deliveryCompany == freezed
          ? _value.deliveryCompany
          : deliveryCompany // ignore: cast_nullable_to_non_nullable
              as DeliveryCompany,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Receiver,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pack implements _Pack {
  const _$_Pack(
      {required this.id,
      this.barcode = '',
      required this.deliveryDate,
      this.passDate,
      required this.deliveryCompany,
      required this.sender,
      required this.receiver,
      this.comment = ''});

  factory _$_Pack.fromJson(Map<String, dynamic> json) => _$$_PackFromJson(json);

  @override
  final int id;
  @JsonKey()
  @override
  final String barcode;
  @override
  final DateTime deliveryDate;
  @override
  final DateTime? passDate;
  @override
  final DeliveryCompany deliveryCompany;
  @override
  final Sender sender;
  @override
  final Receiver receiver;
  @JsonKey()
  @override
  final String comment;

  @override
  String toString() {
    return 'Pack(id: $id, barcode: $barcode, deliveryDate: $deliveryDate, passDate: $passDate, deliveryCompany: $deliveryCompany, sender: $sender, receiver: $receiver, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pack &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality()
                .equals(other.deliveryDate, deliveryDate) &&
            const DeepCollectionEquality().equals(other.passDate, passDate) &&
            const DeepCollectionEquality()
                .equals(other.deliveryCompany, deliveryCompany) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(deliveryDate),
      const DeepCollectionEquality().hash(passDate),
      const DeepCollectionEquality().hash(deliveryCompany),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(receiver),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$PackCopyWith<_Pack> get copyWith =>
      __$PackCopyWithImpl<_Pack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackToJson(this);
  }
}

abstract class _Pack implements Pack {
  const factory _Pack(
      {required int id,
      String barcode,
      required DateTime deliveryDate,
      DateTime? passDate,
      required DeliveryCompany deliveryCompany,
      required Sender sender,
      required Receiver receiver,
      String comment}) = _$_Pack;

  factory _Pack.fromJson(Map<String, dynamic> json) = _$_Pack.fromJson;

  @override
  int get id;
  @override
  String get barcode;
  @override
  DateTime get deliveryDate;
  @override
  DateTime? get passDate;
  @override
  DeliveryCompany get deliveryCompany;
  @override
  Sender get sender;
  @override
  Receiver get receiver;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$PackCopyWith<_Pack> get copyWith => throw _privateConstructorUsedError;
}

PackWrite _$PackWriteFromJson(Map<String, dynamic> json) {
  return _PackWrite.fromJson(json);
}

/// @nodoc
class _$PackWriteTearOff {
  const _$PackWriteTearOff();

  _PackWrite call(
      {String barcode = '',
      required DateTime deliveryDate,
      DateTime? passDate,
      required int deliveryCompany,
      required int sender,
      required int receiver,
      String comment = ''}) {
    return _PackWrite(
      barcode: barcode,
      deliveryDate: deliveryDate,
      passDate: passDate,
      deliveryCompany: deliveryCompany,
      sender: sender,
      receiver: receiver,
      comment: comment,
    );
  }

  PackWrite fromJson(Map<String, Object?> json) {
    return PackWrite.fromJson(json);
  }
}

/// @nodoc
const $PackWrite = _$PackWriteTearOff();

/// @nodoc
mixin _$PackWrite {
  String get barcode => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  DateTime? get passDate => throw _privateConstructorUsedError;
  int get deliveryCompany => throw _privateConstructorUsedError;
  int get sender => throw _privateConstructorUsedError;
  int get receiver => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackWriteCopyWith<PackWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackWriteCopyWith<$Res> {
  factory $PackWriteCopyWith(PackWrite value, $Res Function(PackWrite) then) =
      _$PackWriteCopyWithImpl<$Res>;
  $Res call(
      {String barcode,
      DateTime deliveryDate,
      DateTime? passDate,
      int deliveryCompany,
      int sender,
      int receiver,
      String comment});
}

/// @nodoc
class _$PackWriteCopyWithImpl<$Res> implements $PackWriteCopyWith<$Res> {
  _$PackWriteCopyWithImpl(this._value, this._then);

  final PackWrite _value;
  // ignore: unused_field
  final $Res Function(PackWrite) _then;

  @override
  $Res call({
    Object? barcode = freezed,
    Object? deliveryDate = freezed,
    Object? passDate = freezed,
    Object? deliveryCompany = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      passDate: passDate == freezed
          ? _value.passDate
          : passDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryCompany: deliveryCompany == freezed
          ? _value.deliveryCompany
          : deliveryCompany // ignore: cast_nullable_to_non_nullable
              as int,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PackWriteCopyWith<$Res> implements $PackWriteCopyWith<$Res> {
  factory _$PackWriteCopyWith(
          _PackWrite value, $Res Function(_PackWrite) then) =
      __$PackWriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String barcode,
      DateTime deliveryDate,
      DateTime? passDate,
      int deliveryCompany,
      int sender,
      int receiver,
      String comment});
}

/// @nodoc
class __$PackWriteCopyWithImpl<$Res> extends _$PackWriteCopyWithImpl<$Res>
    implements _$PackWriteCopyWith<$Res> {
  __$PackWriteCopyWithImpl(_PackWrite _value, $Res Function(_PackWrite) _then)
      : super(_value, (v) => _then(v as _PackWrite));

  @override
  _PackWrite get _value => super._value as _PackWrite;

  @override
  $Res call({
    Object? barcode = freezed,
    Object? deliveryDate = freezed,
    Object? passDate = freezed,
    Object? deliveryCompany = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? comment = freezed,
  }) {
    return _then(_PackWrite(
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      passDate: passDate == freezed
          ? _value.passDate
          : passDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryCompany: deliveryCompany == freezed
          ? _value.deliveryCompany
          : deliveryCompany // ignore: cast_nullable_to_non_nullable
              as int,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackWrite implements _PackWrite {
  const _$_PackWrite(
      {this.barcode = '',
      required this.deliveryDate,
      this.passDate,
      required this.deliveryCompany,
      required this.sender,
      required this.receiver,
      this.comment = ''});

  factory _$_PackWrite.fromJson(Map<String, dynamic> json) =>
      _$$_PackWriteFromJson(json);

  @JsonKey()
  @override
  final String barcode;
  @override
  final DateTime deliveryDate;
  @override
  final DateTime? passDate;
  @override
  final int deliveryCompany;
  @override
  final int sender;
  @override
  final int receiver;
  @JsonKey()
  @override
  final String comment;

  @override
  String toString() {
    return 'PackWrite(barcode: $barcode, deliveryDate: $deliveryDate, passDate: $passDate, deliveryCompany: $deliveryCompany, sender: $sender, receiver: $receiver, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackWrite &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality()
                .equals(other.deliveryDate, deliveryDate) &&
            const DeepCollectionEquality().equals(other.passDate, passDate) &&
            const DeepCollectionEquality()
                .equals(other.deliveryCompany, deliveryCompany) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(deliveryDate),
      const DeepCollectionEquality().hash(passDate),
      const DeepCollectionEquality().hash(deliveryCompany),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(receiver),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$PackWriteCopyWith<_PackWrite> get copyWith =>
      __$PackWriteCopyWithImpl<_PackWrite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackWriteToJson(this);
  }
}

abstract class _PackWrite implements PackWrite {
  const factory _PackWrite(
      {String barcode,
      required DateTime deliveryDate,
      DateTime? passDate,
      required int deliveryCompany,
      required int sender,
      required int receiver,
      String comment}) = _$_PackWrite;

  factory _PackWrite.fromJson(Map<String, dynamic> json) =
      _$_PackWrite.fromJson;

  @override
  String get barcode;
  @override
  DateTime get deliveryDate;
  @override
  DateTime? get passDate;
  @override
  int get deliveryCompany;
  @override
  int get sender;
  @override
  int get receiver;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$PackWriteCopyWith<_PackWrite> get copyWith =>
      throw _privateConstructorUsedError;
}
