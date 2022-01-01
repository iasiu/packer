import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.height = 40,
    this.width = double.infinity,
    this.color = AppColors.inpost,
    this.textColor = AppColors.black,
    this.radius = 8,
    this.icon,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  final String text;
  final double height;
  final VoidCallback? onPressed;
  final Color color;
  final Color textColor;
  final double width;
  final double radius;
  final Icon? icon;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(
            width,
            height,
          )),
          minimumSize: MaterialStateProperty.all(Size(
            width,
            40,
          )),
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: const BorderSide(),
          ))),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              textAlign: textAlign,
              style: TextStyles.black14.copyWith(color: textColor),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          if (icon != null) ...[
            const SizedBox(width: 4),
            icon!,
          ],
        ],
      ),
    );
  }
}
