import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:packer/config/injection.dart';
import 'package:packer/controllers/history_cubit/history_cubit.dart';
import 'package:packer/controllers/pass_package_cubit/pass_package_cubit.dart';
import 'package:packer/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:packer/config/router.dart';

import 'controllers/add_package_cubit/add_package_cubit.dart';

Future main() async {
  await dotenv.load(fileName: 'assets/env/.env');
  configureInjection('test');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<AddPackageCubit>()),
        BlocProvider.value(value: getIt<PassPackageCubit>()),
        BlocProvider.value(value: getIt<HistoryCubit>()),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          FormBuilderLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Packer',
        navigatorKey: navigatorKey,
        initialRoute: AppPages.initialRoute,
        onGenerateRoute: AppRouter.generateNewRoute,
      ),
    );
  }
}
