import 'package:flutter/material.dart';
import 'package:mentaledge_ui/pages/home.dart';
import 'package:mentaledge_ui/pages/other/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mental Edge',
      theme: ThemeData(
        useMaterial3: false,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
      },
    );
  }
}
