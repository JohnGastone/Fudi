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
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 158, 181, 199),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 135),
                        child: Container(
                          height: 24,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text(
                              "001",
                              style: GoogleFonts.spaceMono(fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    "./assets/food.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text("Seafood Lovers",
                                    style: GoogleFonts.spaceMono(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          (Icons.electric_bike),
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "10-17",
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 14,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Text("mins",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 14,
                                            color: Colors.blueGrey))
                                  ],
                                )
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
