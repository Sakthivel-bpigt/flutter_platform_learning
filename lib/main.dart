// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_learning/platform_root.dart';
import 'package:flutter_platform_learning/trade_page.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const PlatformRoot();
      },
    ),
    GoRoute(
      path: '/quote/:n',
      builder: (BuildContext context, GoRouterState state) {
        String n = state.pathParameters["n"] ?? "0";
        print (n);
        return const TradePage();
      },
    ),
  ],
  navigatorKey: GlobalKey<NavigatorState>(),
  initialLocation: '/',
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return PlatformProvider(
      builder: (context) => PlatformApp.router(
        // android: (_) => MaterialAppData(theme: ThemeData.light()),
        // ios: (_) => CupertinoAppData(theme: CupertinoThemeData()),
        title: 'Flutter Platform Widgets Example',
        // routerDelegate: router.routerDelegate,
        // routeInformationParser: router.routeInformationParser,
        routerConfig: router,
      ),
    );
  }
}
