import 'package:flutter/material.dart';
import 'package:packer/config/config.dart';
import 'package:packer/models/models.dart';
import 'package:packer/views/widgets/app_scaffold.dart';

class PickDeliveryPage extends StatelessWidget {
  const PickDeliveryPage({
    Key? key,
    required this.deliveryCompanies,
  }) : super(key: key);

  final List<DeliveryCompany> deliveryCompanies;

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
            child: deliveryCompanies.isNotEmpty
                ? ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(deliveryCompanies[index]);
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
                                deliveryCompanies[index].name,
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
                    itemCount: deliveryCompanies.length,
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
