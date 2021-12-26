import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:packer/config/injection.dart';
import 'package:packer/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:packer/config/router.dart';

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
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Packer',
      navigatorKey: navigatorKey,
      initialRoute: AppPages.initialRoute,
      onGenerateRoute: AppRouter.generateNewRoute,
    );
  }
}
