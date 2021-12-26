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

  _DeliveryCompany call({required String name}) {
    return _DeliveryCompany(
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
  $Res call({String name});
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
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String name});
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
    Object? name = freezed,
  }) {
    return _then(_DeliveryCompany(
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
  const _$_DeliveryCompany({required this.name});

  factory _$_DeliveryCompany.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryCompanyFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'DeliveryCompany(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryCompany &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

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
  const factory _DeliveryCompany({required String name}) = _$_DeliveryCompany;

  factory _DeliveryCompany.fromJson(Map<String, dynamic> json) =
      _$_DeliveryCompany.fromJson;

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
      {required String name,
      required String city,
      required String addressLine,
      required String postCode,
      String comment = ''}) {
    return _Sender(
      name: name,
      city: city,
      addressLine: addressLine,
      postCode: postCode,
      comment: comment,
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
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get addressLine => throw _privateConstructorUsedError;
  String get postCode => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SenderCopyWith<Sender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderCopyWith<$Res> {
  factory $SenderCopyWith(Sender value, $Res Function(Sender) then) =
      _$SenderCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String city,
      String addressLine,
      String postCode,
      String comment});
}

/// @nodoc
class _$SenderCopyWithImpl<$Res> implements $SenderCopyWith<$Res> {
  _$SenderCopyWithImpl(this._value, this._then);

  final Sender _value;
  // ignore: unused_field
  final $Res Function(Sender) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? addressLine = freezed,
    Object? postCode = freezed,
    Object? comment = freezed,
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
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
      {String name,
      String city,
      String addressLine,
      String postCode,
      String comment});
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
    Object? name = freezed,
    Object? city = freezed,
    Object? addressLine = freezed,
    Object? postCode = freezed,
    Object? comment = freezed,
  }) {
    return _then(_Sender(
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
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sender implements _Sender {
  const _$_Sender(
      {required this.name,
      required this.city,
      required this.addressLine,
      required this.postCode,
      this.comment = ''});

  factory _$_Sender.fromJson(Map<String, dynamic> json) =>
      _$$_SenderFromJson(json);

  @override
  final String name;
  @override
  final String city;
  @override
  final String addressLine;
  @override
  final String postCode;
  @JsonKey()
  @override
  final String comment;

  @override
  String toString() {
    return 'Sender(name: $name, city: $city, addressLine: $addressLine, postCode: $postCode, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sender &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.addressLine, addressLine) &&
            const DeepCollectionEquality().equals(other.postCode, postCode) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(addressLine),
      const DeepCollectionEquality().hash(postCode),
      const DeepCollectionEquality().hash(comment));

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
      {required String name,
      required String city,
      required String addressLine,
      required String postCode,
      String comment}) = _$_Sender;

  factory _Sender.fromJson(Map<String, dynamic> json) = _$_Sender.fromJson;

  @override
  String get name;
  @override
  String get city;
  @override
  String get addressLine;
  @override
  String get postCode;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$SenderCopyWith<_Sender> get copyWith => throw _privateConstructorUsedError;
}

Receiver _$ReceiverFromJson(Map<String, dynamic> json) {
  return _Receiver.fromJson(json);
}

/// @nodoc
class _$ReceiverTearOff {
  const _$ReceiverTearOff();

  _Receiver call(
      {required String name,
      required String emailAddress,
      String phoneNumber = '',
      String officeNumber = ''}) {
    return _Receiver(
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
      {String name,
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
abstract class _$ReceiverCopyWith<$Res> implements $ReceiverCopyWith<$Res> {
  factory _$ReceiverCopyWith(_Receiver value, $Res Function(_Receiver) then) =
      __$ReceiverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
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
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? officeNumber = freezed,
  }) {
    return _then(_Receiver(
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
  _$_Receiver(
      {required this.name,
      required this.emailAddress,
      this.phoneNumber = '',
      this.officeNumber = ''});

  factory _$_Receiver.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiverFromJson(json);

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
    return 'Receiver(name: $name, emailAddress: $emailAddress, phoneNumber: $phoneNumber, officeNumber: $officeNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Receiver &&
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
  _$ReceiverCopyWith<_Receiver> get copyWith =>
      __$ReceiverCopyWithImpl<_Receiver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiverToJson(this);
  }
}

abstract class _Receiver implements Receiver {
  factory _Receiver(
      {required String name,
      required String emailAddress,
      String phoneNumber,
      String officeNumber}) = _$_Receiver;

  factory _Receiver.fromJson(Map<String, dynamic> json) = _$_Receiver.fromJson;

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

Pack _$PackFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'from':
      return _PackFrom.fromJson(json);
    case 'to':
      return _PackTo.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Pack',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$PackTearOff {
  const _$PackTearOff();

  _PackFrom from(
      {String barcode = '',
      required DateTime deliveryDate,
      DateTime? passDate,
      required DeliveryCompany deliveryCompany,
      required Sender sender,
      Receiver? receiver = null}) {
    return _PackFrom(
      barcode: barcode,
      deliveryDate: deliveryDate,
      passDate: passDate,
      deliveryCompany: deliveryCompany,
      sender: sender,
      receiver: receiver,
    );
  }

  _PackTo to(
      {String barcode = '',
      required DeliveryCompany deliveryCompany,
      required Sender sender,
      Receiver? receiver = null}) {
    return _PackTo(
      barcode: barcode,
      deliveryCompany: deliveryCompany,
      sender: sender,
      receiver: receiver,
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
  String get barcode => throw _privateConstructorUsedError;
  DeliveryCompany get deliveryCompany => throw _privateConstructorUsedError;
  Sender get sender => throw _privateConstructorUsedError;
  Receiver? get receiver => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String barcode,
            DateTime deliveryDate,
            DateTime? passDate,
            DeliveryCompany deliveryCompany,
            Sender sender,
            Receiver? receiver)
        from,
    required TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)
        to,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String barcode, DateTime deliveryDate, DateTime? passDate,
            DeliveryCompany deliveryCompany, Sender sender, Receiver? receiver)?
        from,
    TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)?
        to,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String barcode, DateTime deliveryDate, DateTime? passDate,
            DeliveryCompany deliveryCompany, Sender sender, Receiver? receiver)?
        from,
    TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)?
        to,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackFrom value) from,
    required TResult Function(_PackTo value) to,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackFrom value)? from,
    TResult Function(_PackTo value)? to,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackFrom value)? from,
    TResult Function(_PackTo value)? to,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackCopyWith<Pack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackCopyWith<$Res> {
  factory $PackCopyWith(Pack value, $Res Function(Pack) then) =
      _$PackCopyWithImpl<$Res>;
  $Res call(
      {String barcode,
      DeliveryCompany deliveryCompany,
      Sender sender,
      Receiver? receiver});

  $DeliveryCompanyCopyWith<$Res> get deliveryCompany;
  $SenderCopyWith<$Res> get sender;
  $ReceiverCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$PackCopyWithImpl<$Res> implements $PackCopyWith<$Res> {
  _$PackCopyWithImpl(this._value, this._then);

  final Pack _value;
  // ignore: unused_field
  final $Res Function(Pack) _then;

  @override
  $Res call({
    Object? barcode = freezed,
    Object? deliveryCompany = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_value.copyWith(
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
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
              as Receiver?,
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
  $ReceiverCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $ReceiverCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$PackFromCopyWith<$Res> implements $PackCopyWith<$Res> {
  factory _$PackFromCopyWith(_PackFrom value, $Res Function(_PackFrom) then) =
      __$PackFromCopyWithImpl<$Res>;
  @override
  $Res call(
      {String barcode,
      DateTime deliveryDate,
      DateTime? passDate,
      DeliveryCompany deliveryCompany,
      Sender sender,
      Receiver? receiver});

  @override
  $DeliveryCompanyCopyWith<$Res> get deliveryCompany;
  @override
  $SenderCopyWith<$Res> get sender;
  @override
  $ReceiverCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$PackFromCopyWithImpl<$Res> extends _$PackCopyWithImpl<$Res>
    implements _$PackFromCopyWith<$Res> {
  __$PackFromCopyWithImpl(_PackFrom _value, $Res Function(_PackFrom) _then)
      : super(_value, (v) => _then(v as _PackFrom));

  @override
  _PackFrom get _value => super._value as _PackFrom;

  @override
  $Res call({
    Object? barcode = freezed,
    Object? deliveryDate = freezed,
    Object? passDate = freezed,
    Object? deliveryCompany = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_PackFrom(
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
              as Receiver?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackFrom implements _PackFrom {
  _$_PackFrom(
      {this.barcode = '',
      required this.deliveryDate,
      this.passDate,
      required this.deliveryCompany,
      required this.sender,
      this.receiver = null,
      String? $type})
      : $type = $type ?? 'from';

  factory _$_PackFrom.fromJson(Map<String, dynamic> json) =>
      _$$_PackFromFromJson(json);

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
  @JsonKey()
  @override
  final Receiver? receiver;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Pack.from(barcode: $barcode, deliveryDate: $deliveryDate, passDate: $passDate, deliveryCompany: $deliveryCompany, sender: $sender, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackFrom &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality()
                .equals(other.deliveryDate, deliveryDate) &&
            const DeepCollectionEquality().equals(other.passDate, passDate) &&
            const DeepCollectionEquality()
                .equals(other.deliveryCompany, deliveryCompany) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(deliveryDate),
      const DeepCollectionEquality().hash(passDate),
      const DeepCollectionEquality().hash(deliveryCompany),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  _$PackFromCopyWith<_PackFrom> get copyWith =>
      __$PackFromCopyWithImpl<_PackFrom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String barcode,
            DateTime deliveryDate,
            DateTime? passDate,
            DeliveryCompany deliveryCompany,
            Sender sender,
            Receiver? receiver)
        from,
    required TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)
        to,
  }) {
    return from(
        barcode, deliveryDate, passDate, deliveryCompany, sender, receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String barcode, DateTime deliveryDate, DateTime? passDate,
            DeliveryCompany deliveryCompany, Sender sender, Receiver? receiver)?
        from,
    TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)?
        to,
  }) {
    return from?.call(
        barcode, deliveryDate, passDate, deliveryCompany, sender, receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String barcode, DateTime deliveryDate, DateTime? passDate,
            DeliveryCompany deliveryCompany, Sender sender, Receiver? receiver)?
        from,
    TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)?
        to,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(
          barcode, deliveryDate, passDate, deliveryCompany, sender, receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackFrom value) from,
    required TResult Function(_PackTo value) to,
  }) {
    return from(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackFrom value)? from,
    TResult Function(_PackTo value)? to,
  }) {
    return from?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackFrom value)? from,
    TResult Function(_PackTo value)? to,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackFromToJson(this);
  }
}

abstract class _PackFrom implements Pack {
  factory _PackFrom(
      {String barcode,
      required DateTime deliveryDate,
      DateTime? passDate,
      required DeliveryCompany deliveryCompany,
      required Sender sender,
      Receiver? receiver}) = _$_PackFrom;

  factory _PackFrom.fromJson(Map<String, dynamic> json) = _$_PackFrom.fromJson;

  @override
  String get barcode;
  DateTime get deliveryDate;
  DateTime? get passDate;
  @override
  DeliveryCompany get deliveryCompany;
  @override
  Sender get sender;
  @override
  Receiver? get receiver;
  @override
  @JsonKey(ignore: true)
  _$PackFromCopyWith<_PackFrom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PackToCopyWith<$Res> implements $PackCopyWith<$Res> {
  factory _$PackToCopyWith(_PackTo value, $Res Function(_PackTo) then) =
      __$PackToCopyWithImpl<$Res>;
  @override
  $Res call(
      {String barcode,
      DeliveryCompany deliveryCompany,
      Sender sender,
      Receiver? receiver});

  @override
  $DeliveryCompanyCopyWith<$Res> get deliveryCompany;
  @override
  $SenderCopyWith<$Res> get sender;
  @override
  $ReceiverCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$PackToCopyWithImpl<$Res> extends _$PackCopyWithImpl<$Res>
    implements _$PackToCopyWith<$Res> {
  __$PackToCopyWithImpl(_PackTo _value, $Res Function(_PackTo) _then)
      : super(_value, (v) => _then(v as _PackTo));

  @override
  _PackTo get _value => super._value as _PackTo;

  @override
  $Res call({
    Object? barcode = freezed,
    Object? deliveryCompany = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_PackTo(
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
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
              as Receiver?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackTo implements _PackTo {
  _$_PackTo(
      {this.barcode = '',
      required this.deliveryCompany,
      required this.sender,
      this.receiver = null,
      String? $type})
      : $type = $type ?? 'to';

  factory _$_PackTo.fromJson(Map<String, dynamic> json) =>
      _$$_PackToFromJson(json);

  @JsonKey()
  @override
  final String barcode;
  @override
  final DeliveryCompany deliveryCompany;
  @override
  final Sender sender;
  @JsonKey()
  @override
  final Receiver? receiver;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Pack.to(barcode: $barcode, deliveryCompany: $deliveryCompany, sender: $sender, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackTo &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality()
                .equals(other.deliveryCompany, deliveryCompany) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(deliveryCompany),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  _$PackToCopyWith<_PackTo> get copyWith =>
      __$PackToCopyWithImpl<_PackTo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String barcode,
            DateTime deliveryDate,
            DateTime? passDate,
            DeliveryCompany deliveryCompany,
            Sender sender,
            Receiver? receiver)
        from,
    required TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)
        to,
  }) {
    return to(barcode, deliveryCompany, sender, receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String barcode, DateTime deliveryDate, DateTime? passDate,
            DeliveryCompany deliveryCompany, Sender sender, Receiver? receiver)?
        from,
    TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)?
        to,
  }) {
    return to?.call(barcode, deliveryCompany, sender, receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String barcode, DateTime deliveryDate, DateTime? passDate,
            DeliveryCompany deliveryCompany, Sender sender, Receiver? receiver)?
        from,
    TResult Function(String barcode, DeliveryCompany deliveryCompany,
            Sender sender, Receiver? receiver)?
        to,
    required TResult orElse(),
  }) {
    if (to != null) {
      return to(barcode, deliveryCompany, sender, receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackFrom value) from,
    required TResult Function(_PackTo value) to,
  }) {
    return to(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackFrom value)? from,
    TResult Function(_PackTo value)? to,
  }) {
    return to?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackFrom value)? from,
    TResult Function(_PackTo value)? to,
    required TResult orElse(),
  }) {
    if (to != null) {
      return to(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackToToJson(this);
  }
}

abstract class _PackTo implements Pack {
  factory _PackTo(
      {String barcode,
      required DeliveryCompany deliveryCompany,
      required Sender sender,
      Receiver? receiver}) = _$_PackTo;

  factory _PackTo.fromJson(Map<String, dynamic> json) = _$_PackTo.fromJson;

  @override
  String get barcode;
  @override
  DeliveryCompany get deliveryCompany;
  @override
  Sender get sender;
  @override
  Receiver? get receiver;
  @override
  @JsonKey(ignore: true)
  _$PackToCopyWith<_PackTo> get copyWith => throw _privateConstructorUsedError;
}
