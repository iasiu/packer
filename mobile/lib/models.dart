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
    @Default(null) String? comment,
  }) = _Sender;

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
}

@freezed
class Receiver with _$Receiver {
  factory Receiver({
    required String name,
    required String emailAddress,
    required String phoneNumber,
    required String officeNumber,
  }) = _Receiver;

  factory Receiver.fromJson(Map<String, dynamic> json) => _$ReceiverFromJson(json);
}

@freezed
class Pack with _$Pack {
  factory Pack({
    @Default('') String? barcode,
    required String deliveryDate,
    @Default(null) String? passDate,
    required DeliveryCompany deliveryCompany,
    required Sender sender,
    @Default(null) Receiver? receiver,
  }) = _Pack;

  factory Pack.fromJson(Map<String, dynamic> json) => _$PackFromJson(json);
}