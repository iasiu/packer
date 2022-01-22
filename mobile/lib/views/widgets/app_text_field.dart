import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:packer/config/config.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.name,
    this.maxLength = 200,
    this.lines = 1,
    this.counterStyle = TextStyles.white14,
    this.validator,
    this.padding = 8,
    this.textInputAction,
    this.keyboardType,
    this.initialValue,
  }) : super(key: key);

  final String name;
  final String? initialValue;
  final int? lines;
  final int? maxLength;
  final TextStyle? counterStyle;
  final String? Function(String?)? validator;
  final double padding;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      initialValue: initialValue,
      autocorrect: false,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
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
        contentPadding: EdgeInsets.all(padding),
        disabledBorder: null,
        errorBorder: null,
        enabledBorder: null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusedErrorBorder: null,
        fillColor: AppColors.jet,
        filled: true,
        counterStyle: counterStyle,
      ),
      name: name,
    );
  }
}
