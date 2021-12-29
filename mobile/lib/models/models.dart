import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.g.dart';
part 'models.freezed.dart';

@freezed
class DeliveryCompany with _$DeliveryCompany {
  const factory DeliveryCompany({
    required String name,
  }) = _DeliveryCompany;

  factory DeliveryCompany.fromJson(Map<String, dynamic> json) =>
      _$DeliveryCompanyFromJson(json);
}

@freezed
class Sender with _$Sender {
  const factory Sender({
    required String name,
    required String city,
    required String addressLine,
    required String postCode,
  }) = _Sender;

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
}

@freezed
class Receiver with _$Receiver {
  const factory Receiver({
    required String name,
    required String emailAddress,
    @Default('') String phoneNumber,
    @Default('') String officeNumber,
  }) = _Receiver;

  factory Receiver.fromJson(Map<String, dynamic> json) =>
      _$ReceiverFromJson(json);
}

@freezed
class Pack with _$Pack {
  const factory Pack({
    @Default('') String barcode,
    required DateTime deliveryDate,
    DateTime? passDate,
    required DeliveryCompany deliveryCompany,
    required Sender sender,
    @Default(null) Receiver? receiver,
    @Default('') String comment,
  }) = _Pack;

  factory Pack.fromJson(Map<String, dynamic> json) => _$PackFromJson(json);
}

@freezed
class PackWrite with _$PackWrite {
  const factory PackWrite({
    @Default('') String barcode,
    required DateTime deliveryDate,
    DateTime? passDate,
    required int deliveryCompanyId,
    required int senderId,
    @Default(null) int? receiverId,
    @Default('') String comment,
  }) = _PackWrite;

  factory PackWrite.fromJson(Map<String, dynamic> json) =>
      _$PackWriteFromJson(json);
}
