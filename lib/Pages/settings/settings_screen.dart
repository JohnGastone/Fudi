import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/setting_item_caed.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: defaultPadding),
              SettingTab(
                text: "Enable Notifications",
                value: false,
                onChanged: (value) {},
              ),
              SettingTab(
                text: "Switch Theme",
                value: false,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
