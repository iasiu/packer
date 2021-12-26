import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class PassPage extends StatelessWidget {
  const PassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      height: 60,
      title: Text(
        S.of(context).passPackage,
        style: TextStyles.white30,
      ),
    );
  }
}