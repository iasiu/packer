import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorText ?? 'Something went wrong, please try again later',
        style: TextStyles.white24,
      ),
    );
  }
}
