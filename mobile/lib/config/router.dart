import 'package:flutter/material.dart';
import 'package:packer/views/home_page/home_page.dart';

class AppRouter {
  static Route generateNewRoute(RouteSettings settings) {
    final page =
        AppPages.allPages.firstWhere((page) => page.route == settings.name);

    return PageRouteBuilder<void>(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: page.build(context, settings.arguments),
      ),
      transitionsBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) =>
          FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}

class AppPage {
  AppPage({
    required this.build,
    required this.route,
  });

  final Widget Function(BuildContext context, Object? arguments) build;
  final String route;
}

class AppPages {
  static final home = AppPage(
    build: (_, __) => const HomePage(),
    route: '/',
  );

  static final String initialRoute = home.route;

  static final List<AppPage> allPages = [home];
}
