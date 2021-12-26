import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/views/home_page/widgets/tile_button.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final tileButtonSize = ((width / 2.3) ~/ 4) * 4.0;

    return AppScaffold(
      title: Text(S.of(context).packer, style: TextStyles.white48),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: TileButton(
                    size: tileButtonSize,
                    icon: Icon(
                      Icons.crop_free,
                      color: AppColors.cultured,
                      size: tileButtonSize - 48,
                    ),
                    text: S.of(context).addPackage,
                    onTap: () {
                      Navigator.of(context).pushNamed('/add');
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: TileButton(
                    size: tileButtonSize,
                    icon: Icon(
                      Icons.volunteer_activism,
                      color: AppColors.cultured,
                      size: tileButtonSize - 48,
                    ),
                    text: S.of(context).passPackage,
                    onTap: () {
                      Navigator.of(context).pushNamed('/pass');
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: TileButton(
                    size: tileButtonSize,
                    icon: Icon(
                      Icons.edit,
                      color: AppColors.cultured,
                      size: tileButtonSize - 48,
                    ),
                    text: S.of(context).editPackage,
                    onTap: () {
                      Navigator.of(context).pushNamed('/edit');
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: TileButton(
                    size: tileButtonSize,
                    icon: Icon(
                      Icons.history,
                      color: AppColors.cultured,
                      size: tileButtonSize - 48,
                    ),
                    text: S.of(context).history,
                    onTap: () {
                      Navigator.of(context).pushNamed('/history');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
