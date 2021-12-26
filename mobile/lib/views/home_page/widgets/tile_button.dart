import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';

class TileButton extends StatelessWidget {
  const TileButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.size,
    this.onTap,
  }) : super(key: key);

  final Icon icon;
  final String text;
  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: AppColors.jet,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.cultured,
              width: 3,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            Text(text, style: TextStyles.white14),
          ],
        ),
      ),
    );
  }
}
