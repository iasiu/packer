import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/generated/l10n.dart';

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
        errorText ?? S.of(context).ErrorPlaceholder_SomethingWrong,
        style: TextStyles.white24,
      ),
    );
  }
}
