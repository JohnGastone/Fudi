// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:fudi/Pages/Authentication/loginPage.dart";
import "package:fudi/Pages/Authentication/signUpPage.dart";
import "package:fudi/Pages/explorePage.dart";
import "package:google_fonts/google_fonts.dart";

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 87, 145, 21),
      body: SingleChildScrollView(
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
                style: GoogleFonts.poppins(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text(
                      "Let's get you a dish",
                      style: GoogleFonts.poppins(
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
              InkWell(
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                        //boxShadow: ,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(fontSize: 30),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  }),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 20),
                child: Row(
                  children: [
                    SizedBox(
                        width: 100,
                        child: Divider(
                          color: Colors.white,
                        )),
                    Text(
                      "  Or  ",
                      style: GoogleFonts.poppins(
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
              InkWell(
                child: Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                      //boxShadow: ,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(fontSize: 30),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  child: Text(
                    "Continue as a guest",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  }),
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
    );
  }
}
