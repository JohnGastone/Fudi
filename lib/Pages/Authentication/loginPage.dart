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
                  child: Container(
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(40)),
                      color: Colors.white24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
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
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                      //boxShadow: ,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "Login",
                      style: GoogleFonts.spaceMono(fontSize: 30),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40)),
                      color: Colors.white24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
