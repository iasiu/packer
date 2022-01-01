import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';

class ListElement extends StatelessWidget {
  const ListElement({
    Key? key,
    this.onTap,
    required this.text,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyles.white16,
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.cultured,
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}
