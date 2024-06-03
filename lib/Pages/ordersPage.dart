// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Thank you for trusting",
                    style: GoogleFonts.spaceMono(fontSize: 18)),
                TextSpan(
                    text: "FUDI",
                    style: GoogleFonts.spaceMono(
                        fontSize: 20, color: Colors.green))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
