import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      height: 60,
      title: Text(
        'History',
        style: TextStyles.white30,
      ),
    );
  }
}
