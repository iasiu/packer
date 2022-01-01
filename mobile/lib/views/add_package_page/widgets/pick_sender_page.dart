import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/models/models.dart';
import 'package:packer/views/add_package_page/widgets/list_element.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/app_text_button.dart';

class PickSenderPage extends StatelessWidget {
  const PickSenderPage({
    Key? key,
    required this.senders,
  }) : super(key: key);

  final List<Sender> senders;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      height: 60,
      title: const Text(
        'Pick sender',
        style: TextStyles.white24,
      ),
      body: Stack(
        children: [
          senders.isNotEmpty
              ? ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => ListElement(
                    text: senders[index].name,
                    onTap: () {
                      Navigator.of(context).pop(senders[index]);
                    },
                  ),
                  separatorBuilder: (context, _) => const Divider(
                    color: AppColors.cultured,
                  ),
                  itemCount: senders.length,
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
                      text: 'New sender',
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
          ),
        ],
      ),
    );
  }
}
