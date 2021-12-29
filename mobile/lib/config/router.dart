import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:packer/views/add_package_page/add_package_page.dart';
import 'package:packer/views/edit_page/edit_page.dart';
import 'package:packer/views/history_page/history_page.dart';
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
        ) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;
          final tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve),
          );
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        });
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
  static final add = AppPage(
    build: (_, __) => AddPackagePage(),
    route: '/add',
  );
  static final edit = AppPage(
    build: (_, __) => const EditPage(),
    route: '/edit',
  );
  static final history = AppPage(
    build: (_, __) => const HistoryPage(),
    route: '/history',
  );

  static final String initialRoute = home.route;

  static final List<AppPage> allPages = [home, add, edit, history];
}
