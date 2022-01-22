import 'package:flutter/material.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/config/config.dart';
import 'package:packer/models/models.dart';
import 'package:packer/views/add_package_page/widgets/add_receiver_page.dart';
import 'package:packer/views/add_package_page/widgets/list_element.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/app_text_button.dart';

class PickReceiverPage extends StatelessWidget {
  const PickReceiverPage({
    Key? key,
    required this.receivers,
    this.ignoreState = false,
  }) : super(key: key);

  final List<Receiver> receivers;
  final bool ignoreState;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      height: 60,
      title: Text(
        S.of(context).PickReceiverPage_PickReceiver,
        style: TextStyles.white24,
      ),
      body: Stack(
        children: [
          receivers.isNotEmpty
              ? ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => ListElement(
                    text: receivers[index].name,
                    onTap: () {
                      Navigator.of(context).pop(receivers[index]);
                    },
                  ),
                  separatorBuilder: (context, _) => const Divider(
                    color: AppColors.cultured,
                  ),
                  itemCount: receivers.length,
                )
              : Center(
                  child: Text(
                    S.of(context).PickReceiverPage_EmptyList,
                    style: TextStyles.white20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 32,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextButton(
                      text: S.of(context).PickReceiverPage_NewReceiver,
                      onPressed: () async {
                        final receiver = await Navigator.of(context)
                            .push(AddReceiverPageRoute(ignoreState: ignoreState)) as Receiver?;
                        if (receiver != null) {
                          Navigator.of(context).pop(receiver);
                        }
                      },
                      height: 48,
                      width: (MediaQuery.of(context).size.width ~/ 2.5) * 1.0,
                      radius: 24,
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
