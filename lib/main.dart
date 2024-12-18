import 'package:cycle_showcasing_ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(routes: [
    GoRoute(
      name: HomePage.routeName,
      path: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
  ]);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bike Booking Ui',
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
