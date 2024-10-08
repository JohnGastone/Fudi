// ignore_for_file: unused_label

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/themeProvider.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(fontSize: 20),
        ),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode:
            themeProvider.themeMode, // Get the theme mode from the provider
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16.0),
                SettingTab(
                  text: "Enable Notifications",
                  value: false,
                  onChanged: (value) {
                    // Add your notification logic here
                  },
                ),
                Row(
                  children: [
                    Text(
                      themeProvider.themeMode == ThemeMode.dark
                          ? "Dark Mode"
                          : "Light Mode",
                      style:
                          GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(width: 12),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Switch(
                        value: themeProvider.themeMode ==
                            ThemeMode
                                .dark, // Get the theme mode from the provider
                        activeColor: const Color(0xFFC18553),
                        onChanged: (bool value) {
                          themeProvider
                              .toggleTheme(); // Toggle theme in the provider
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingTab extends StatelessWidget {
  const SettingTab({
    super.key,
    this.text,
    required this.value,
    required this.onChanged,
  });

  final String? text;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      decoration: const BoxDecoration(color: Colors.white),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        title: Text(
          text!,
          style: GoogleFonts.poppins(),
        ),
        trailing: CupertinoSwitch(
          activeColor: Colors.green,
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
