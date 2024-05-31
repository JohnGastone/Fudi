// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SingleChildScrollView(
        child: Flexible(
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                ),
                SizedBox(
                  height: 300,
                ),
                Text(
                  "Hello",
                  style: GoogleFonts.spaceMono(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Let's get started",
                  style: GoogleFonts.spaceMono(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
