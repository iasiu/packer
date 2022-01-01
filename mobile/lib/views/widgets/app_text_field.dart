import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:packer/config/config.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.name,
    this.maxLength,
    this.lines,
  }) : super(key: key);

  final String name;
  final int? lines;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      cursorColor: AppColors.cultured,
      maxLength: maxLength,
      style: TextStyles.white14,
      maxLines: lines,
      minLines: lines,
      decoration: const InputDecoration.collapsed(
        hintText: null,
      ).copyWith(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        contentPadding: const EdgeInsets.all(8),
        disabledBorder: null,
        errorBorder: null,
        enabledBorder: null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusedErrorBorder: null,
        fillColor: AppColors.jet,
        filled: true,
        counterStyle: TextStyles.white14,
      ),
      name: name,
    );
  }
}
