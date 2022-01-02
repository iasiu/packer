import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    this.body,
    required this.title,
    this.height = 72,
    this.actions,
  }) : super(key: key);

  final Widget? body;
  final Widget? title;
  final double height;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, height),
        child: AppBar(
          backgroundColor: AppColors.jet,
          title: title,
          centerTitle: true,
          actions: actions,
        ),
      ),
      body: body,
    );
  }
}
