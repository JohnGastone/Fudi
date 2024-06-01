// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fudi/Pages/Authentication/introductionPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set the app to fullscreen mode (hides the status bar and navigation bar)
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const IntroductionPage(),
    );
  }
}
