import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/config/router.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/models/models.dart';
import 'package:packer/utils/app_scanner.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/app_text_button.dart';
import 'package:packer/views/widgets/app_toaster.dart';

class AddPageArguments {
  AddPageArguments(this.barcode);
  String barcode;
}

class AddPage extends HookWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final barcode = useState(
        (ModalRoute.of(context)!.settings.arguments as AddPageArguments)
            .barcode);
    final sender = useState<Sender?>(null);
    final receiver = useState<Receiver?>(null);
    final paddingTop = MediaQuery.of(context).padding.top;

    return AppScaffold(
      height: 60,
      title: Text(
        S.of(context).addPackage,
        style: TextStyles.white24,
      ),
      actions: [
        Center(
            child: GestureDetector(
          onTap: () {
            if (barcode.value.length > 8) {
              if (sender.value != null) {
                Navigator.of(context).popUntil(
                  (route) => route.settings.name == AppPages.home.route,
                );
              } else {
                AppToaster.show(
                  text: 'Please pick sender',
                  bgColor: Colors.red,
                  textColor: AppColors.cultured,
                );
              }
            } else {
              AppToaster.show(
                text: 'Barcode is too short, please scan again',
                bgColor: Colors.red,
                textColor: AppColors.cultured,
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Save',
                style: TextStyles.white16.copyWith(
                  color: AppColors.inpost,
                )),
          ),
        )),
      ],
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Package barcode*',
                  style: TextStyles.white20,
                ),
                AppTextButton(
                  text: barcode.value,
                  color: AppColors.jet,
                  textColor: AppColors.cultured,
                ),
                AppTextButton(
                  text: 'Scan again',
                  onPressed: () {
                    AppScanner.barcode().then((barcodeScanRes) {
                      if (barcodeScanRes != '-1') {
                        barcode.value = barcodeScanRes;
                      }
                    });
                  },
                ),
                const SizedBox(height: 16),
                const Text(
                  'Sender*',
                  style: TextStyles.white20,
                ),
                AppTextButton(
                  color: AppColors.jet,
                  textColor: AppColors.cultured,
                  text: sender.value?.name ?? '',
                ),
                AppTextButton(
                  text: 'Pick sender',
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      enableDrag: false,
                      backgroundColor: AppColors.jet,
                      builder: (context) => Padding(
                        padding: EdgeInsets.only(
                          top: paddingTop,
                        ),
                        child: const PickSenderPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                const Text(
                  'Receiver',
                  style: TextStyles.white20,
                ),
                AppTextButton(
                  color: AppColors.jet,
                  textColor: AppColors.cultured,
                  text: receiver.value?.name ?? '',
                ),
                AppTextButton(
                  text: 'Pick receiver',
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      enableDrag: false,
                      backgroundColor: AppColors.jet,
                      builder: (context) => Padding(
                        padding: EdgeInsets.only(
                          top: paddingTop,
                        ),
                        child: const PickReceiverPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                FormBuilder(
                  enabled: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Comment',
                        style: TextStyles.white20,
                      ),
                      FormBuilderTextField(
                        cursorColor: AppColors.cultured,
                        maxLength: 200,
                        style: TextStyles.white14,
                        maxLines: 8,
                        minLines: 8,
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
                          counterStyle: TextStyles.white14,
                        ),
                        name: 'comment',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PickSenderPage extends StatelessWidget {
  const PickSenderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      height: 60,
      title: Text(
        'Pick sender',
        style: TextStyles.white24,
      ),
    );
  }
}

class PickReceiverPage extends StatelessWidget {
  const PickReceiverPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      height: 60,
      title: Text(
        'Pick receiver',
        style: TextStyles.white24,
      ),
    );
  }
}
