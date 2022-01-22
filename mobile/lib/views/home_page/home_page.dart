// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/config/router.dart';
import 'package:packer/controllers/add_package_cubit/add_package_cubit.dart';
import 'package:packer/controllers/pass_package_cubit/pass_package_cubit.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/utils/app_scanner.dart';
import 'package:packer/utils/app_toaster.dart';
import 'package:packer/views/add_package_page/add_package_page.dart';
import 'package:packer/views/home_page/widgets/tile_button.dart';
import 'package:packer/views/pass_package_page/pass_package_page.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/loading_placeholder.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final tileButtonSize = ((width / 2.3) ~/ 4) * 4.0;

    return BlocBuilder<AddPackageCubit, AddPackageState>(
      builder: (context, addPackageState) {
        return BlocBuilder<PassPackageCubit, PassPackageState>(
          builder: (context, passPackageState) {
            return Stack(
              children: [
                AppScaffold(
                  title: Text(S.of(context).appName, style: TextStyles.white48),
                  body: MultiBlocListener(
                    listeners: [
                      BlocListener<AddPackageCubit, AddPackageState>(
                          listener: (context, state) {
                        state.maybeMap(
                          orElse: () {},
                          added: (_) => AppToaster.show(
                            text: 'Successfully added a package',
                            bgColor: Colors.green,
                            textColor: AppColors.cultured,
                          ),
                          failure: (failure) => AppToaster.show(
                            text:
                                failure.message ?? 'Encountered unknown error',
                            bgColor: Colors.red,
                            textColor: AppColors.cultured,
                          ),
                        );
                      }),
                      BlocListener<PassPackageCubit, PassPackageState>(
                          listener: (context, state) {
                        state.maybeMap(
                          orElse: () {},
                          failure: (f) => AppToaster.show(
                            text: f.message ?? 'Encountered unknown error',
                            bgColor: Colors.red,
                            textColor: AppColors.cultured,
                          ),
                          success: (_) => AppToaster.show(
                            text: 'Successfully passed a package',
                            bgColor: Colors.green,
                            textColor: AppColors.cultured,
                          ),
                        );
                      }),
                    ],
                    child: Padding(
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
                                    size: tileButtonSize - 60,
                                  ),
                                  text: S.of(context).addPackage,
                                  onTap: () async {
                                    context.read<AddPackageCubit>().emit(
                                          const AddPackageState.inProgress(),
                                        );
                                    AppScanner.barcode()
                                        .then((barcodeScanRes) async {
                                      if (barcodeScanRes != '-1') {
                                        final res = await context
                                            .read<AddPackageCubit>()
                                            .fetch();
                                        if (res) {
                                          Navigator.of(context).pushNamed(
                                            AppPages.add.route,
                                            arguments: AddPackagePageArguments(
                                              barcodeScanRes,
                                            ),
                                          );
                                          return;
                                        }
                                      }
                                      context.read<AddPackageCubit>().emit(
                                            const AddPackageState.initial(),
                                          );
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
                                    size: tileButtonSize - 60,
                                  ),
                                  text: S.of(context).passPackage,
                                  onTap: () {
                                    context.read<PassPackageCubit>().emit(
                                          const PassPackageState.inProgress(),
                                        );
                                    AppScanner.barcode()
                                        .then((barcodeScanRes) async {
                                      if (barcodeScanRes != '-1') {
                                        final res = await context
                                            .read<PassPackageCubit>()
                                            .fetchPackWith(
                                                barcode: barcodeScanRes);
                                        if (res) {
                                          Navigator.pushNamed(
                                            context,
                                            AppPages.pass.route,
                                            arguments: PassPackagePageArguments(
                                              barcodeScanRes,
                                            ),
                                          );
                                        }
                                      } else {
                                        context.read<PassPackageCubit>().emit(
                                            const PassPackageState.initial());
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
                                    size: tileButtonSize - 60,
                                  ),
                                  text: S.of(context).editPackage,
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(AppPages.edit.route);
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
                                    size: tileButtonSize - 60,
                                  ),
                                  text: S.of(context).history,
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(AppPages.history.route);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (addPackageState is AddPackageInProgress ||
                    passPackageState is PassPackageInProgress)
                  const LoadingPlaceholder(),
              ],
            );
          },
        );
      },
    );
  }
}
