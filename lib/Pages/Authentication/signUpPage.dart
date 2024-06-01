// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../explorePage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 48, 79),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 36, 48, 79),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Text(
                  'Sign',
                  style: GoogleFonts.spaceMono(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 86),
                  child: Text(
                    "Up",
                    style: GoogleFonts.spaceMono(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 600,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 87, 145, 21),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your username i.e. Msambi Nungwa",
                            hintStyle: GoogleFonts.spaceMono(fontSize: 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Enter your email address",
                            hintStyle: GoogleFonts.spaceMono(fontSize: 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: GoogleFonts.spaceMono(fontSize: 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                            hintText: "Repeat your pasword",
                            hintStyle: GoogleFonts.spaceMono(fontSize: 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(16)),
                      height: 50,
                      width: 170,
                      child: TextButton(
                          child: Text(
                            "Create account",
                            style: GoogleFonts.spaceMono(
                                fontSize: 18, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage()));
                          }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
