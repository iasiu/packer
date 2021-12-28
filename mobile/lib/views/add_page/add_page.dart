import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/views/add_page/widgets/app_stepper.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      height: 60,
      title: Text(
        S.of(context).addPackage,
        style: TextStyles.white30,
      ),
      body: Column(
        children: [
          AppStepper(),
        ],
      ),
    );
  }
}
