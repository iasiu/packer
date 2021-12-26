import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packer/config/config.dart';
import 'package:packer/config/injection.dart';
import 'package:packer/generated/l10n.dart';
import 'package:packer/repository.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        final repo = getIt<Repository>();
        repo.getPacks();
      },
      [],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.jet,
        title: Text(S.of(context).packer),
      ),
      body: Center(
        child: Text(S.of(context).packer),
      ),
    );
  }
}
