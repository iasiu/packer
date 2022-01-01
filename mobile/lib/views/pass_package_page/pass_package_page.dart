import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/controllers/pass_package_cubit/pass_package_cubit.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/app_text_button.dart';
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
            S.of(context).passPackage,
            style: TextStyles.white24,
          ),
          actions: [
            state.maybeMap(
              orElse: () => Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Pass',
                    style: TextStyles.white16.copyWith(
                      color: AppColors.inpost,
                    )),
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
                    child: Text('Pass',
                        style: TextStyles.white16.copyWith(
                          color: AppColors.inpost,
                        )),
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
                    const Text(
                      'Package barcode',
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      text: fetched.pack.barcode,
                      color: AppColors.jet,
                      textColor: AppColors.cultured,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Delivery date',
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      color: AppColors.jet,
                      textColor: AppColors.cultured,
                      text: '${DateFormat.yMMMEd().format(
                        fetched.pack.deliveryDate.toLocal(),
                      )} - ${DateFormat.jm().format(
                        fetched.pack.deliveryDate.toLocal(),
                      )}',
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Delivery company',
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      color: AppColors.jet,
                      textColor: AppColors.cultured,
                      text: fetched.pack.deliveryCompany.name,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Sender',
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      color: AppColors.jet,
                      textColor: AppColors.cultured,
                      text: fetched.pack.sender.name,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Receiver',
                      style: TextStyles.white20,
                    ),
                    AppTextButton(
                      color: AppColors.jet,
                      textColor: AppColors.cultured,
                      text: fetched.pack.receiver.name,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Comment',
                      style: TextStyles.white20,
                    ),
                    FormBuilderTextField(
                      initialValue: fetched.pack.comment,
                      readOnly: true,
                      maxLength: 200,
                      style: TextStyles.white14,
                      maxLines: 5,
                      minLines: 5,
                      decoration: const InputDecoration.collapsed(
                        hintText: null,
                      ).copyWith(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        contentPadding: const EdgeInsets.all(8),
                        disabledBorder: null,
                        errorBorder: null,
                        enabledBorder: null,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        focusedErrorBorder: null,
                        fillColor: AppColors.jet,
                        filled: true,
                        counter: null,
                      ),
                      name: 'comment',
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
