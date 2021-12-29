import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class PassPageArguments {
  PassPageArguments(this.barcode);
  final String barcode;
}

class PassPage extends StatelessWidget {
  const PassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _ = ModalRoute.of(context)!.settings.arguments as PassPageArguments;
    return AppScaffold(
      height: 60,
      title: Text(
        S.of(context).passPackage,
        style: TextStyles.white24,
      ),
    );
  }
}