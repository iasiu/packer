// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Packup`
  String get AppName {
    return Intl.message(
      'Packup',
      name: 'AppName',
      desc: '',
      args: [],
    );
  }

  /// `Add package`
  String get AddPack {
    return Intl.message(
      'Add package',
      name: 'AddPack',
      desc: '',
      args: [],
    );
  }

  /// `Pass package`
  String get PassPack {
    return Intl.message(
      'Pass package',
      name: 'PassPack',
      desc: '',
      args: [],
    );
  }

  /// `Edit package`
  String get EditPack {
    return Intl.message(
      'Edit package',
      name: 'EditPack',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get History {
    return Intl.message(
      'History',
      name: 'History',
      desc: '',
      args: [],
    );
  }

  /// `New receiver`
  String get AddReceiverPage_NewReceiver {
    return Intl.message(
      'New receiver',
      name: 'AddReceiverPage_NewReceiver',
      desc: '',
      args: [],
    );
  }

  /// `Name*`
  String get AddReceiverPage_Name {
    return Intl.message(
      'Name*',
      name: 'AddReceiverPage_Name',
      desc: '',
      args: [],
    );
  }

  /// `Email address*`
  String get AddReceiverPage_EmailAddress {
    return Intl.message(
      'Email address*',
      name: 'AddReceiverPage_EmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get AddReceiverPage_PhoneNumber {
    return Intl.message(
      'Phone number',
      name: 'AddReceiverPage_PhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Office`
  String get AddReceiverPage_Office {
    return Intl.message(
      'Office',
      name: 'AddReceiverPage_Office',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get AddReceiverPage_Save {
    return Intl.message(
      'Save',
      name: 'AddReceiverPage_Save',
      desc: '',
      args: [],
    );
  }

  /// `New sender`
  String get AddSenderPage_NewSender {
    return Intl.message(
      'New sender',
      name: 'AddSenderPage_NewSender',
      desc: '',
      args: [],
    );
  }

  /// `Name*`
  String get AddSenderPage_Name {
    return Intl.message(
      'Name*',
      name: 'AddSenderPage_Name',
      desc: '',
      args: [],
    );
  }

  /// `City*`
  String get AddSenderPage_City {
    return Intl.message(
      'City*',
      name: 'AddSenderPage_City',
      desc: '',
      args: [],
    );
  }

  /// `Address*`
  String get AddSenderPage_Address {
    return Intl.message(
      'Address*',
      name: 'AddSenderPage_Address',
      desc: '',
      args: [],
    );
  }

  /// `Post code*`
  String get AddSenderPage_PostCode {
    return Intl.message(
      'Post code*',
      name: 'AddSenderPage_PostCode',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get AddSenderPage_Save {
    return Intl.message(
      'Save',
      name: 'AddSenderPage_Save',
      desc: '',
      args: [],
    );
  }

  /// `Please pick receiver first`
  String get AddPackagePage_PleasePickReceiver {
    return Intl.message(
      'Please pick receiver first',
      name: 'AddPackagePage_PleasePickReceiver',
      desc: '',
      args: [],
    );
  }

  /// `Please pick sender first`
  String get AddPackagePage_PleasePickSender {
    return Intl.message(
      'Please pick sender first',
      name: 'AddPackagePage_PleasePickSender',
      desc: '',
      args: [],
    );
  }

  /// `Please pick delivery company first`
  String get AddPackagePage_PleasePickDelivery {
    return Intl.message(
      'Please pick delivery company first',
      name: 'AddPackagePage_PleasePickDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Barcode is too short, please scan again`
  String get AddPackagePage_BarcodeShort {
    return Intl.message(
      'Barcode is too short, please scan again',
      name: 'AddPackagePage_BarcodeShort',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get AddPackagePage_Save {
    return Intl.message(
      'Save',
      name: 'AddPackagePage_Save',
      desc: '',
      args: [],
    );
  }

  /// `Package barcode*`
  String get AddPackagePage_Barcode {
    return Intl.message(
      'Package barcode*',
      name: 'AddPackagePage_Barcode',
      desc: '',
      args: [],
    );
  }

  /// `Delivery company*`
  String get AddPackagePage_Delivery {
    return Intl.message(
      'Delivery company*',
      name: 'AddPackagePage_Delivery',
      desc: '',
      args: [],
    );
  }

  /// `Pick delivery company`
  String get AddPackagePage_PickDelivery {
    return Intl.message(
      'Pick delivery company',
      name: 'AddPackagePage_PickDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Sender*`
  String get AddPackagePage_Sender {
    return Intl.message(
      'Sender*',
      name: 'AddPackagePage_Sender',
      desc: '',
      args: [],
    );
  }

  /// `Pick sender`
  String get AddPackagePage_PickSender {
    return Intl.message(
      'Pick sender',
      name: 'AddPackagePage_PickSender',
      desc: '',
      args: [],
    );
  }

  /// `Receiver*`
  String get AddPackagePage_Receiver {
    return Intl.message(
      'Receiver*',
      name: 'AddPackagePage_Receiver',
      desc: '',
      args: [],
    );
  }

  /// `Pick receiver`
  String get AddPackagePage_PickReceiver {
    return Intl.message(
      'Pick receiver',
      name: 'AddPackagePage_PickReceiver',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get AddPackagePage_Comment {
    return Intl.message(
      'Comment',
      name: 'AddPackagePage_Comment',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get EditPackPage_Save {
    return Intl.message(
      'Save',
      name: 'EditPackPage_Save',
      desc: '',
      args: [],
    );
  }

  /// `Package barcode`
  String get EditPackPage_Barcode {
    return Intl.message(
      'Package barcode',
      name: 'EditPackPage_Barcode',
      desc: '',
      args: [],
    );
  }

  /// `Delivery date`
  String get EditPackPage_DeliveryDate {
    return Intl.message(
      'Delivery date',
      name: 'EditPackPage_DeliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Delivery company*`
  String get EditPackPage_Delivery {
    return Intl.message(
      'Delivery company*',
      name: 'EditPackPage_Delivery',
      desc: '',
      args: [],
    );
  }

  /// `Pick delivery company`
  String get EditPackPage_PickDelivery {
    return Intl.message(
      'Pick delivery company',
      name: 'EditPackPage_PickDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Sender*`
  String get EditPackPage_Sender {
    return Intl.message(
      'Sender*',
      name: 'EditPackPage_Sender',
      desc: '',
      args: [],
    );
  }

  /// `Pick sender`
  String get EditPackPage_PickSender {
    return Intl.message(
      'Pick sender',
      name: 'EditPackPage_PickSender',
      desc: '',
      args: [],
    );
  }

  /// `Receiver*`
  String get EditPackPage_Receiver {
    return Intl.message(
      'Receiver*',
      name: 'EditPackPage_Receiver',
      desc: '',
      args: [],
    );
  }

  /// `Pick receiver`
  String get EditPackPage_PickReceiver {
    return Intl.message(
      'Pick receiver',
      name: 'EditPackPage_PickReceiver',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get EditPackPage_Comment {
    return Intl.message(
      'Comment',
      name: 'EditPackPage_Comment',
      desc: '',
      args: [],
    );
  }

  /// `There are no packs that hasn't been passed yet`
  String get EditPage_ThereAre {
    return Intl.message(
      'There are no packs that hasn\'t been passed yet',
      name: 'EditPage_ThereAre',
      desc: '',
      args: [],
    );
  }

  /// `List is currently empty`
  String get HistoryPage_EmptyList {
    return Intl.message(
      'List is currently empty',
      name: 'HistoryPage_EmptyList',
      desc: '',
      args: [],
    );
  }

  /// `Successfully added a package`
  String get HomePage_SuccessAdd {
    return Intl.message(
      'Successfully added a package',
      name: 'HomePage_SuccessAdd',
      desc: '',
      args: [],
    );
  }

  /// `Successfully passed a package`
  String get HomePage_SuccessPass {
    return Intl.message(
      'Successfully passed a package',
      name: 'HomePage_SuccessPass',
      desc: '',
      args: [],
    );
  }

  /// `Encountered unknown error`
  String get HomePage_UnknownError {
    return Intl.message(
      'Encountered unknown error',
      name: 'HomePage_UnknownError',
      desc: '',
      args: [],
    );
  }

  /// `Pass`
  String get PassPackagePage_Pass {
    return Intl.message(
      'Pass',
      name: 'PassPackagePage_Pass',
      desc: '',
      args: [],
    );
  }

  /// `Package barcode`
  String get PassPackagePage_PackageBarcode {
    return Intl.message(
      'Package barcode',
      name: 'PassPackagePage_PackageBarcode',
      desc: '',
      args: [],
    );
  }

  /// `Delivery date`
  String get PassPackagePage_DeliveryDate {
    return Intl.message(
      'Delivery date',
      name: 'PassPackagePage_DeliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Delivery company`
  String get PassPackagePage_DeliveryCompany {
    return Intl.message(
      'Delivery company',
      name: 'PassPackagePage_DeliveryCompany',
      desc: '',
      args: [],
    );
  }

  /// `Sender`
  String get PassPackagePage_Sender {
    return Intl.message(
      'Sender',
      name: 'PassPackagePage_Sender',
      desc: '',
      args: [],
    );
  }

  /// `Receiver`
  String get PassPackagePage_Receiver {
    return Intl.message(
      'Receiver',
      name: 'PassPackagePage_Receiver',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get PassPackagePage_Comment {
    return Intl.message(
      'Comment',
      name: 'PassPackagePage_Comment',
      desc: '',
      args: [],
    );
  }

  /// `Pick delivery company`
  String get PickDeliveryPage_PickDelivery {
    return Intl.message(
      'Pick delivery company',
      name: 'PickDeliveryPage_PickDelivery',
      desc: '',
      args: [],
    );
  }

  /// `List is curently empty`
  String get PickDeliveryPage_EmptyList {
    return Intl.message(
      'List is curently empty',
      name: 'PickDeliveryPage_EmptyList',
      desc: '',
      args: [],
    );
  }

  /// `Pick receiver`
  String get PickReceiverPage_PickReceiver {
    return Intl.message(
      'Pick receiver',
      name: 'PickReceiverPage_PickReceiver',
      desc: '',
      args: [],
    );
  }

  /// `List is curently empty`
  String get PickReceiverPage_EmptyList {
    return Intl.message(
      'List is curently empty',
      name: 'PickReceiverPage_EmptyList',
      desc: '',
      args: [],
    );
  }

  /// `New receiver`
  String get PickReceiverPage_NewReceiver {
    return Intl.message(
      'New receiver',
      name: 'PickReceiverPage_NewReceiver',
      desc: '',
      args: [],
    );
  }

  /// `Pick sender`
  String get PickSenderPage_PickSender {
    return Intl.message(
      'Pick sender',
      name: 'PickSenderPage_PickSender',
      desc: '',
      args: [],
    );
  }

  /// `List is curently empty`
  String get PickSenderPage_EmptyList {
    return Intl.message(
      'List is curently empty',
      name: 'PickSenderPage_EmptyList',
      desc: '',
      args: [],
    );
  }

  /// `New sender`
  String get PickSenderPage_NewSender {
    return Intl.message(
      'New sender',
      name: 'PickSenderPage_NewSender',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again later`
  String get ErrorPlaceholder_SomethingWrong {
    return Intl.message(
      'Something went wrong, please try again later',
      name: 'ErrorPlaceholder_SomethingWrong',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
