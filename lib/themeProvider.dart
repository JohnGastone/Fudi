import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Add this import

class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
    // Constructor to load saved theme
    _loadThemeMode();
  }

  ThemeMode _themeMode = ThemeMode.light; // Default to light mode

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        (_themeMode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
    _saveThemeMode(); // Save the theme after toggling
    notifyListeners();
  }

  // Save theme to shared preferences
  void _saveThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', _themeMode == ThemeMode.dark);
  }

  // Load theme from shared preferences
  void _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    _themeMode =
        prefs.getBool('isDarkMode') ?? false ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
