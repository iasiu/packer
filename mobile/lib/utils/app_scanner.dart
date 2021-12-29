import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AppScanner {
  static Future<String> barcode() {
    return FlutterBarcodeScanner.scanBarcode(
      "#ffcc02",
      'Cancel',
      true,
      ScanMode.BARCODE,
    );
  }
}
