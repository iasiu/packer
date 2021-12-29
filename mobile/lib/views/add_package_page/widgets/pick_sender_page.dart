import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/models/models.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

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
      body: Column(
        children: [
          Expanded(
            child: senders.isNotEmpty
                ? ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(senders[index]);
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                senders[index].name,
                                style: TextStyles.white16,
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: AppColors.cultured,
                                size: 28,
                              )
                            ],
                          ),
                        ),
                      ),
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
          ),
        ],
      ),
    );
  }
}
