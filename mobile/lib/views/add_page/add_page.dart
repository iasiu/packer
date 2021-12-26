import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      height: 60,
      title: Text(
        'Add package',
        style: TextStyles.white30,
      ),
    );
  }
}
