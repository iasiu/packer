import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/config/router.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/utils/app_scanner.dart';
import 'package:packer/views/add_page/add_page.dart';
import 'package:packer/views/home_page/widgets/tile_button.dart';
import 'package:packer/views/pass_page/pass_page.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final tileButtonSize = ((width / 2.3) ~/ 4) * 4.0;

    return AppScaffold(
      title: Text(S.of(context).appName, style: TextStyles.white48),
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
                      color: AppColors.inpost,
                      size: tileButtonSize - 48,
                    ),
                    text: S.of(context).addPackage,
                    onTap: () async {
                      AppScanner.barcode().then((barcodeScanRes) {
                        if (barcodeScanRes != '-1') {
                          Navigator.of(context).pushNamed(
                            AppPages.add.route,
                            arguments: AddPageArguments(barcodeScanRes),
                          );
                        }
                      });
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: TileButton(
                    size: tileButtonSize,
                    icon: Icon(
                      Icons.volunteer_activism,
                      color: AppColors.inpost,
                      size: tileButtonSize - 48,
                    ),
                    text: S.of(context).passPackage,
                    onTap: () {
                      AppScanner.barcode().then((barcodeScanRes) {
                        if (barcodeScanRes != '-1') {
                          Navigator.of(context).pushNamed(
                          AppPages.pass.route,
                          arguments: PassPageArguments(barcodeScanRes),
                        );
                        }
                      });
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
                      color: AppColors.inpost,
                      size: tileButtonSize - 48,
                    ),
                    text: S.of(context).editPackage,
                    onTap: () {
                      Navigator.of(context).pushNamed(AppPages.edit.route);
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: TileButton(
                    size: tileButtonSize,
                    icon: Icon(
                      Icons.history,
                      color: AppColors.inpost,
                      size: tileButtonSize - 48,
                    ),
                    text: S.of(context).history,
                    onTap: () {
                      Navigator.of(context).pushNamed(AppPages.history.route);
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
