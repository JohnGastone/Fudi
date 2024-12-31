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
        backgroundColor: const Color(0xFF00BF6D),
        foregroundColor: Colors.white,
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
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 221, 206, 206),
          body: SingleChildScrollView(
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
                SettingTab(
                  text: "Change Theme",
                  value: false,
                  onChanged: (value) {
                    // Add your notification logic here
                  },
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
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 221, 206, 206),
      ),
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
