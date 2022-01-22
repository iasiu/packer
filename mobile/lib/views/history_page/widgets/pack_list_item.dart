import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:intl/intl.dart';
import 'package:packer/models/models.dart';

class PackListItem extends StatelessWidget {
  const PackListItem({
    Key? key,
    required this.pack,
  }) : super(key: key);

  final Pack pack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Center(
              child: Column(children: [
                Text(
                  pack.sender.name,
                  style: TextStyles.white18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '${DateFormat.yMMMEd().format(
                    pack.deliveryDate.toLocal(),
                  )} \n ${DateFormat.jm().format(
                    pack.deliveryDate.toLocal(),
                  )}',
                  style: TextStyles.white14,
                  textAlign: TextAlign.center,
                ),
              ]),
            ),
          ),
          Flexible(
            child: Text(
              '----->',
              style: TextStyles.white16.copyWith(
                color: pack.passDate != null
                    ? AppColors.inpost
                    : AppColors.davysGray,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: Column(children: [
                FittedBox(
                  child: Text(
                    pack.receiver.name,
                    style: TextStyles.white18,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  pack.passDate != null
                      ? '${DateFormat.yMMMEd().format(
                          pack.passDate!.toLocal(),
                        )} \n ${DateFormat.jm().format(
                          pack.passDate!.toLocal(),
                        )}'
                      : '-',
                  style: TextStyles.white14,
                  textAlign: TextAlign.center,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
