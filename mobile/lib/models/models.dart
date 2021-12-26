import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.g.dart';
part 'models.freezed.dart';

@freezed
class DeliveryCompany with _$DeliveryCompany {
  const factory DeliveryCompany({
    required String name,
  }) = _DeliveryCompany;

  factory DeliveryCompany.fromJson(Map<String, dynamic> json) => _$DeliveryCompanyFromJson(json);
}

@freezed
class Sender with _$Sender {
  const factory Sender({
    required String name,
    required String city,
    required String addressLine,
    required String postCode,
    @Default('') String comment,
  }) = _Sender;

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
}

@freezed
class Receiver with _$Receiver {
  factory Receiver({
    required String name,
    required String emailAddress,
    @Default('') String phoneNumber,
    @Default('') String officeNumber,
  }) = _Receiver;

  factory Receiver.fromJson(Map<String, dynamic> json) => _$ReceiverFromJson(json);
}

@freezed
class Pack with _$Pack {
  factory Pack.from({
    @Default('') String barcode,
    required DateTime deliveryDate,
    DateTime? passDate,
    required DeliveryCompany deliveryCompany,
    required Sender sender,
    @Default(null) Receiver? receiver,
  }) = _PackFrom;

  factory Pack.to({
    @Default('') String barcode,
    required DeliveryCompany deliveryCompany,
    required Sender sender,
    @Default(null) Receiver? receiver,
  }) = _PackTo;

  factory Pack.fromJson(Map<String, dynamic> json) => _$PackFromJson(json);
}