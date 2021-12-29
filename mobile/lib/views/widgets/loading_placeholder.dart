import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';

class LoadingPlaceholder extends StatelessWidget {
  const LoadingPlaceholder({
    Key? key,
    this.backgroundColor = AppColors.loadingBackground,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: const Center(
        child: CircularProgressIndicator(
          backgroundColor: AppColors.davysGray,
          color: AppColors.inpost,
        ),
      ),
    );
  }
}
