import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanStepContent extends StatelessWidget {
  const ScanStepContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width ~/ 2) * 1.0;
    return Row(
      children: [
        TextButton(
          onPressed: () async {
            String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
              "#ffcc02",
              'Cancel',
              true,
              ScanMode.BARCODE,
            );
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(
              width,
              0,
            )),
            backgroundColor: MaterialStateProperty.all(AppColors.inpost),
          ),
          child: const Text(
            'Start scanner',
            style: TextStyles.black14,
          ),
        ),
      ],
    );
  }
}
