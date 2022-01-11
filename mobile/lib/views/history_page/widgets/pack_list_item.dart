import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/controllers/history_cubit/history_cubit.dart';
import 'package:intl/intl.dart';

class PackListItem extends StatelessWidget {
  const PackListItem({
    Key? key,
    required this.index,
    required this.fetched,
  }) : super(key: key);

  final int index;
  final HistoryFetched fetched;

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
                  fetched.packs[index].sender.name,
                  style: TextStyles.white18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat.yMd().format(
                    fetched.packs[index].deliveryDate,
                  ),
                  style: TextStyles.white16,
                ),
              ]),
            ),
          ),
          Flexible(
            child: Text(
              '----->',
              style: TextStyles.white16.copyWith(
                color: fetched.packs[index].passDate != null
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
                    fetched.packs[index].receiver.name,
                    style: TextStyles.white18,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  fetched.packs[index].passDate != null
                      ? DateFormat.yMd().format(
                          fetched.packs[index].passDate!,
                        )
                      : '-',
                  style: TextStyles.white16,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
