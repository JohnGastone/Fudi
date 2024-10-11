import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fudi/Pages/Authentication/introductionPage.dart';
import 'package:fudi/Pages/Order/orderTracker.dart';
import 'package:fudi/models/fav_dishes_model.dart';
import 'package:fudi/models/plateModel.dart';
import 'package:fudi/themeProvider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(), // Initialize with loaded theme
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PlateModel()),
          ChangeNotifierProvider(create: (_) => FavoritesModel()),
          ChangeNotifierProvider(create: (_) => OrderProvider()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider =
        Provider.of<ThemeProvider>(context); // Access ThemeProvider

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.themeMode, // Apply theme mode based on provider
      home: const IntroductionPage(),
    );
  }
}
