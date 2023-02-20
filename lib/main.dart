// ignore_for_file: unused_element

import 'package:dafna/models/practick.dart';
import 'package:dafna/screens/home_screen.dart';
import 'package:dafna/widget/app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    ),
  );
}
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'appBAr',
          builder: (BuildContext context, GoRouterState state) {
            return const AppBarView();
          },
        ),
         GoRoute(
          path: 'MyWidget',
          builder: (BuildContext context, GoRouterState state) {
            return const MyWidget();
          },
        ),
      ],
    ),
  ],
);
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}