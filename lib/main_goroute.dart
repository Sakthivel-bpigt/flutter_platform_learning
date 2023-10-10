import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_learning/platform_root.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';

void main() {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const PlatformRoot();
        },
      ),
    ],
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: '/',
  );

  runApp(
    PlatformProvider(
      builder: (context) => PlatformApp.router(
        // android: (_) => MaterialAppData(theme: ThemeData.light()),
        // ios: (_) => CupertinoAppData(theme: CupertinoThemeData()),
        title: 'Flutter Platform Widgets Example',
        // routerDelegate: router.routerDelegate,
        // routeInformationParser: router.routeInformationParser,
        routerConfig: router,
      ),
    ),
  );
}
