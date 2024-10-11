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
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 87, 145, 21),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: screenHeight, // Set the height to the screen height
            width: screenWidth, // Set the width to the screen width
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/pic.png"),
                    fit: BoxFit.cover)), // Cover the entire screen
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  "Hello.",
                  style: GoogleFonts.poppins(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 20),
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
                const SizedBox(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Loginpage()));
                    }),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48, right: 20),
                  child: Row(
                    children: [
                      const SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.white,
                          )),
                      Text(
                        "  Or  ",
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                ),
                const SizedBox(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()));
                    }),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
