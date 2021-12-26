import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      height: 60,
      title: Text(
        'Edit package',
        style: TextStyles.white30,
      ),
    );
  }
}
