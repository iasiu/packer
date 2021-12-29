import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.height = 40,
    this.color = AppColors.inpost,
    this.textColor = AppColors.black,
  }) : super(key: key);

  final String text;
  final double height;
  final VoidCallback? onPressed;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(
          double.infinity,
          height,
        )),
        minimumSize: MaterialStateProperty.all(const Size(
          double.infinity,
          40,
        )),
        backgroundColor: MaterialStateProperty.all(color),
      ),
      child: Text(
        text,
        style: TextStyles.black14.copyWith(color: textColor),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }
}
