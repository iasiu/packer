import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/models/models.dart';
import 'package:packer/views/add_package_page/widgets/list_element.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/app_text_button.dart';

class PickReceiverPage extends StatelessWidget {
  const PickReceiverPage({
    Key? key,
    required this.receivers,
  }) : super(key: key);

  final List<Receiver> receivers;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      height: 60,
      title: const Text(
        'Pick receiver',
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
              : const Center(
                  child: Text(
                    'List is currently empty',
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
                      text: 'New receiver',
                      onPressed: () {},
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
