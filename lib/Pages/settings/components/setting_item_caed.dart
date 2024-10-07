import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

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
        contentPadding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        title: Text(
          text!,
          style: GoogleFonts.poppins(),
        ),
        trailing: CupertinoSwitch(
          activeColor: primaryColor,
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
