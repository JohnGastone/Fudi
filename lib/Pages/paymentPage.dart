// ignore_for_file: camel_case_types, prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class paymentPage extends StatefulWidget {
  const paymentPage({super.key});

  @override
  State<paymentPage> createState() => _paymentPageState();
}

class _paymentPageState extends State<paymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 221, 206, 206),
        title: Center(
          child: Text(
            "Choose a payment method",
            style: GoogleFonts.spaceMono(fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "./assets/Halopesa.png",
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  "./assets/Mpesa.png",
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  "./assets/Tigopesa.png",
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  "./assets/Airtelmoney.png",
                  height: 50,
                  width: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
