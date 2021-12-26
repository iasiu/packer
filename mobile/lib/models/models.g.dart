// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryCompany _$$_DeliveryCompanyFromJson(Map<String, dynamic> json) =>
    _$_DeliveryCompany(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_DeliveryCompanyToJson(_$_DeliveryCompany instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_Sender _$$_SenderFromJson(Map<String, dynamic> json) => _$_Sender(
      name: json['name'] as String,
      city: json['city'] as String,
      addressLine: json['addressLine'] as String,
      postCode: json['postCode'] as String,
      comment: json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$$_SenderToJson(_$_Sender instance) => <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'addressLine': instance.addressLine,
      'postCode': instance.postCode,
      'comment': instance.comment,
    };

_$_Receiver _$$_ReceiverFromJson(Map<String, dynamic> json) => _$_Receiver(
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      phoneNumber: json['phoneNumber'] as String? ?? '',
      officeNumber: json['officeNumber'] as String? ?? '',
    );

Map<String, dynamic> _$$_ReceiverToJson(_$_Receiver instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'officeNumber': instance.officeNumber,
    };

_$_PackFrom _$$_PackFromFromJson(Map<String, dynamic> json) => _$_PackFrom(
      barcode: json['barcode'] as String? ?? '',
      deliveryDate: DateTime.parse(json['deliveryDate'] as String),
      passDate: json['passDate'] == null
          ? null
          : DateTime.parse(json['passDate'] as String),
      deliveryCompany: DeliveryCompany.fromJson(
          json['deliveryCompany'] as Map<String, dynamic>),
      sender: Sender.fromJson(json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : Receiver.fromJson(json['receiver'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_PackFromToJson(_$_PackFrom instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'deliveryDate': instance.deliveryDate.toIso8601String(),
      'passDate': instance.passDate?.toIso8601String(),
      'deliveryCompany': instance.deliveryCompany,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'runtimeType': instance.$type,
    };

_$_PackTo _$$_PackToFromJson(Map<String, dynamic> json) => _$_PackTo(
      barcode: json['barcode'] as String? ?? '',
      deliveryCompany: DeliveryCompany.fromJson(
          json['deliveryCompany'] as Map<String, dynamic>),
      sender: Sender.fromJson(json['sender'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : Receiver.fromJson(json['receiver'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_PackToToJson(_$_PackTo instance) => <String, dynamic>{
      'barcode': instance.barcode,
      'deliveryCompany': instance.deliveryCompany,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'runtimeType': instance.$type,
    };
