// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      backgroundColor: Color.fromARGB(255, 87, 145, 21),
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
                          BorderRadius.only(bottomRight: Radius.circular(100)),
                      color: Colors.white24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Hello.",
                  style: GoogleFonts.spaceMono(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Let's get you a dish",
                        style: GoogleFonts.spaceMono(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Image.asset(
                        "./assets/blink.png",
                        height: 40,
                        width: 40,
                      )
                    ],
                  ),
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 20),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.white,
                          )),
                      Text(
                        "  Or  ",
                        style: GoogleFonts.spaceMono(
                            fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.white,
                          )),
                    ],
                  ),
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
                      "Sign Up",
                      style: GoogleFonts.spaceMono(fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(100)),
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
