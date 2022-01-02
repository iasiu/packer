import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:packer/utils/app_toaster.dart';

class AppScanner {
  static Future<String> barcode() {
    AppToaster.cancel();
    return FlutterBarcodeScanner.scanBarcode(
      "#ffcc02",
      'Cancel',
      true,
      ScanMode.BARCODE,
    );
  }
}
