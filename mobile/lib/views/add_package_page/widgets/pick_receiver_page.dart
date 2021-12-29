import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/models/models.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

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
        'Pick delivery company',
        style: TextStyles.white24,
      ),
      body: Column(
        children: [
          Expanded(
            child: receivers.isNotEmpty
                ? ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(receivers[index]);
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
                                receivers[index].name,
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
          ),
        ],
      ),
    );
  }
}
