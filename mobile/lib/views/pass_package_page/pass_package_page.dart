import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/controllers/pass_package_cubit/pass_package_cubit.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/app_text_button.dart';
import 'package:packer/views/widgets/app_text_field.dart';
import 'package:packer/views/widgets/error_placeholder.dart';
import 'package:packer/views/widgets/loading_placeholder.dart';
import 'package:intl/intl.dart';

class PassPackagePageArguments {
  PassPackagePageArguments(this.barcode);
  String barcode;
}

class PassPackagePage extends HookWidget {
  const PassPackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PassPackageCubit, PassPackageState>(
      builder: (context, state) {
        return AppScaffold(
          height: 60,
          title: Text(
            S.of(context).PassPack,
            style: TextStyles.white24,
          ),
          actions: [
            state.maybeMap(
              orElse: () => Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  S.of(context).PassPackagePage_Pass,
                  style: TextStyles.white16.copyWith(
                    color: AppColors.inpost,
                  ),
                ),
              ),
              fetched: (fetched) => Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () async {
                    Navigator.of(context).pop();
                    Future.delayed(
                      const Duration(milliseconds: 300),
                      () => context.read<PassPackageCubit>().passPack(
                            fetched.pack.id,
                          ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      S.of(context).PassPackagePage_Pass,
                      style: TextStyles.white16.copyWith(
                        color: AppColors.inpost,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          body: state.maybeMap(
            orElse: () => const LoadingPlaceholder(
              backgroundColor: Colors.transparent,
            ),
            failure: (failure) => ErrorPlaceholder(errorText: failure.message),
            fetched: (fetched) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).PassPackagePage_PackageBarcode,
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      text: fetched.pack.barcode,
                      color: AppColors.davysGray,
                      textColor: AppColors.black,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).PassPackagePage_DeliveryDate,
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      color: AppColors.davysGray,
                      textColor: AppColors.black,
                      text: '${DateFormat.yMMMEd().format(
                        fetched.pack.deliveryDate.toLocal(),
                      )} - ${DateFormat.jm().format(
                        fetched.pack.deliveryDate.toLocal(),
                      )}',
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).PassPackagePage_DeliveryCompany,
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      color: AppColors.davysGray,
                      textColor: AppColors.black,
                      text: fetched.pack.deliveryCompany.name,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).PassPackagePage_Sender,
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      color: AppColors.davysGray,
                      textColor: AppColors.black,
                      text: fetched.pack.sender.name,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).PassPackagePage_Receiver,
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      color: AppColors.davysGray,
                      textColor: AppColors.black,
                      text: fetched.pack.receiver.name,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).PassPackagePage_Comment,
                      style: TextStyles.white20,
                    ),
                    AppTextField(
                      name: 'comment',
                      initialValue: fetched.pack.comment,
                      readOnly: true,
                      lines: 5,
                      counterStyle: null,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
