import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/controllers/edit_cubit/edit_cubit.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/models/models.dart';
import 'package:packer/views/add_package_page/widgets/pick_delivery_page.dart';
import 'package:packer/views/add_package_page/widgets/pick_receiver_page.dart';
import 'package:packer/views/add_package_page/widgets/pick_sender_page.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/app_text_button.dart';
import 'package:packer/views/widgets/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:packer/views/widgets/error_placeholder.dart';
import 'package:packer/views/widgets/loading_placeholder.dart';
import 'package:intl/intl.dart';

class EditPackRoute extends MaterialPageRoute {
  EditPackRoute({
    Key? key,
    required this.pack,
  }) : super(
          builder: (context) => _EditPackPage(pack: pack),
        );

  final Pack pack;
}

class _EditPackPage extends HookWidget {
  _EditPackPage({
    Key? key,
    required this.pack,
  }) : super(key: key);

  final Pack pack;
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final deliveryCompany = useState(pack.deliveryCompany);
    final sender = useState(pack.sender);
    final receiver = useState(pack.receiver);
    final paddingTop = MediaQuery.of(context).padding.top;

    return BlocBuilder<EditCubit, EditState>(
      builder: (context, state) {
        return AppScaffold(
          height: 60,
          title: Text(
            S.of(context).EditPack,
            style: TextStyles.white24,
          ),
          actions: state is EditFetched
              ? [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        formKey.currentState!.saveAndValidate();
                        final value = formKey.currentState!.value;
                        context.read<EditCubit>().editPack(
                              pack.id,
                              PackWrite(
                                barcode: pack.barcode,
                                deliveryDate: pack.deliveryDate,
                                deliveryCompany: deliveryCompany.value.id,
                                sender: sender.value.id,
                                receiver: receiver.value.id,
                                comment: value['comment'] ?? '',
                              ),
                            );
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          S.of(context).EditPackPage_Save,
                          style: TextStyles.white16.copyWith(
                            color: AppColors.inpost,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
              : null,
          body: state.maybeMap(
            orElse: () => const ErrorPlaceholder(errorText: null),
            failure: (failure) => ErrorPlaceholder(errorText: failure.message),
            initial: (_) => const LoadingPlaceholder(
              backgroundColor: Colors.transparent,
            ),
            fetched: (fetched) => GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 16.0,
                  ),
                  child: _EditPackForm(
                    barcode: pack.barcode,
                    deliveryCompany: deliveryCompany,
                    sender: sender,
                    receiver: receiver,
                    formKey: formKey,
                    paddingTop: paddingTop,
                    fetched: fetched,
                    initialComment: pack.comment,
                    deliveryDate: pack.deliveryDate,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _EditPackForm extends StatelessWidget {
  const _EditPackForm({
    Key? key,
    required this.barcode,
    required this.deliveryCompany,
    required this.paddingTop,
    required this.sender,
    required this.receiver,
    required this.formKey,
    required this.fetched,
    required this.deliveryDate,
    this.initialComment,
  }) : super(key: key);

  final String barcode;
  final ValueNotifier<DeliveryCompany?> deliveryCompany;
  final ValueNotifier<Sender?> sender;
  final ValueNotifier<Receiver?> receiver;
  final GlobalKey<FormBuilderState> formKey;
  final double paddingTop;
  final EditFetched fetched;
  final String? initialComment;
  final DateTime deliveryDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).EditPackPage_Barcode,
          style: TextStyles.white20,
        ),
        AppTextButton(
          text: barcode,
          color: AppColors.davysGray,
          textColor: AppColors.jet,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 16),
        Text(
          S.of(context).EditPackPage_DeliveryDate,
          style: TextStyles.white20,
        ),
        AppTextButton(
          text: '${DateFormat.yMMMEd().format(
            deliveryDate.toLocal(),
          )} - ${DateFormat.jm().format(
            deliveryDate.toLocal(),
          )}',
          color: AppColors.davysGray,
          textColor: AppColors.jet,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 16),
        Text(
          S.of(context).EditPackPage_Delivery,
          style: TextStyles.white20,
        ),
        AppTextButton(
          color: AppColors.jet,
          textColor: AppColors.cultured,
          text: deliveryCompany.value?.name ?? S.of(context).EditPackPage_PickDelivery,
          textAlign: TextAlign.start,
          onPressed: () async {
            final deliveryRes = await showModalBottomSheet<DeliveryCompany>(
              context: context,
              isScrollControlled: true,
              enableDrag: false,
              backgroundColor: AppColors.jet,
              builder: (context) => Padding(
                padding: EdgeInsets.only(
                  top: paddingTop,
                ),
                child: PickDeliveryPage(
                  deliveryCompanies: fetched.deliveryCompanies,
                ),
              ),
            );
            if (deliveryRes != null) {
              deliveryCompany.value = deliveryRes;
            }
          },
        ),
        const SizedBox(height: 16),
        Text(
          S.of(context).EditPackPage_Sender,
          style: TextStyles.white20,
        ),
        AppTextButton(
          color: AppColors.jet,
          textColor: AppColors.cultured,
          text: sender.value?.name ?? S.of(context).EditPackPage_PickSender,
          textAlign: TextAlign.start,
          onPressed: () async {
            final senderRes = await showModalBottomSheet<Sender>(
              context: context,
              isScrollControlled: true,
              enableDrag: false,
              backgroundColor: AppColors.jet,
              builder: (context) => Padding(
                padding: EdgeInsets.only(
                  top: paddingTop,
                ),
                child: PickSenderPage(
                  senders: fetched.senders,
                  paddingTop: paddingTop,
                  ignoreState: true,
                ),
              ),
            );
            if (senderRes != null) {
              sender.value = senderRes;
            }
          },
        ),
        const SizedBox(height: 16),
        Text(
          S.of(context).EditPackPage_Receiver,
          style: TextStyles.white20,
        ),
        AppTextButton(
          color: AppColors.jet,
          textColor: AppColors.cultured,
          text: receiver.value?.name ?? S.of(context).EditPackPage_PickReceiver,
          textAlign: TextAlign.start,
          onPressed: () async {
            final receiverRes = await showModalBottomSheet<Receiver>(
              context: context,
              isScrollControlled: true,
              enableDrag: false,
              backgroundColor: AppColors.jet,
              builder: (context) => Padding(
                padding: EdgeInsets.only(
                  top: paddingTop,
                ),
                child: PickReceiverPage(
                  receivers: fetched.receivers,
                  ignoreState: true,
                ),
              ),
            );
            if (receiverRes != null) {
              receiver.value = receiverRes;
            }
          },
        ),
        const SizedBox(height: 16),
        _CommentForm(
          formKey: formKey,
          initialComment: initialComment,
        ),
      ],
    );
  }
}

class _CommentForm extends StatelessWidget {
  const _CommentForm({
    Key? key,
    required this.formKey,
    this.initialComment,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey;
  final String? initialComment;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      enabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).EditPackPage_Comment,
            style: TextStyles.white20,
          ),
          AppTextField(
            name: 'comment',
            lines: 5,
            initialValue: initialComment,
          ),
        ],
      ),
    );
  }
}
