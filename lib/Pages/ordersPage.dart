// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              height: 30,
              width: 70,
              child: FloatingActionButton(
                child: Text(
                  "Back",
                  style: GoogleFonts.spaceMono(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Thank you for trusting ",
                    style: GoogleFonts.spaceMono(fontSize: 16)),
                TextSpan(
                    text: "Fudi ",
                    style: GoogleFonts.spaceMono(
                        fontSize: 21, color: Colors.green)),
              ])),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Current Orders",
                      style: GoogleFonts.spaceMono(fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
