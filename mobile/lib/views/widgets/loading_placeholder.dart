import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
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
        child: SizedBox(
          height: 64,
          width: 64,
          child: LoadingIndicator(
            indicatorType: Indicator.pacman,
            colors: [AppColors.inpost],
            strokeWidth: 1,
          ),
        ),
      ),
    );
  }
}
