import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/controllers/history_cubit/history_cubit.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/views/history_page/widgets/pack_list_item.dart';
import 'package:packer/views/widgets/app_scaffold.dart';
import 'package:packer/views/widgets/error_placeholder.dart';
import 'package:packer/views/widgets/loading_placeholder.dart';

class HistoryPage extends HookWidget {
  const HistoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<HistoryCubit>().fetch();
    }, []);
    return AppScaffold(
      height: 60,
      title: Text(
        S.of(context).History,
        style: TextStyles.white24,
      ),
      body: BlocBuilder<HistoryCubit, HistoryState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const LoadingPlaceholder(),
            failure: (failure) => ErrorPlaceholder(
              errorText: failure.message,
            ),
            fetched: (fetched) => fetched.packs.isNotEmpty
                ? ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => PackListItem(
                      pack: fetched.packs[index],
                    ),
                    separatorBuilder: (context, _) => const Divider(
                      color: AppColors.cultured,
                    ),
                    itemCount: fetched.packs.length,
                  )
                : Center(
                    child: Text(
                      S.of(context).HistoryPage_EmptyList,
                      style: TextStyles.white20,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
