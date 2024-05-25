// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fudi/Pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: SizedBox(
            width: 160,
            height: 40,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              backgroundColor: Colors.green,
              child: Text(
                "Add more plates",
                style: GoogleFonts.spaceMono(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Swipe an item left to delete it",
              style: GoogleFonts.spaceMono(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white54),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "./assets/bugger.png",
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chicken Bugger",
                              style: GoogleFonts.spaceMono(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$ 9.5",
                              style: GoogleFonts.spaceMono(
                                  fontSize: 18, color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 140,
                        width: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 211, 211),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: GoogleFonts.spaceMono(fontSize: 30),
                              ),
                              Text(
                                "1",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 20, color: Colors.green),
                              ),
                              Text(
                                "-",
                                style: GoogleFonts.spaceMono(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white54),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "./assets/margeritha.png",
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Margeritha Pizza",
                              style: GoogleFonts.spaceMono(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$ 10.0",
                              style: GoogleFonts.spaceMono(
                                  fontSize: 18, color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 140,
                        width: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 211, 211),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: GoogleFonts.spaceMono(fontSize: 30),
                              ),
                              Text(
                                "1",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 20, color: Colors.green),
                              ),
                              Text(
                                "-",
                                style: GoogleFonts.spaceMono(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white54),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "./assets/pilau.png",
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pilau Vuruga",
                              style: GoogleFonts.spaceMono(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$ 15.0",
                              style: GoogleFonts.spaceMono(
                                  fontSize: 18, color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 140,
                        width: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 211, 211),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: GoogleFonts.spaceMono(fontSize: 30),
                              ),
                              Text(
                                "1",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 20, color: Colors.green),
                              ),
                              Text(
                                "-",
                                style: GoogleFonts.spaceMono(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white54),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "./assets/hamburger.png",
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beef Bugger",
                              style: GoogleFonts.spaceMono(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$ 12.5",
                              style: GoogleFonts.spaceMono(
                                  fontSize: 18, color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 140,
                        width: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 211, 211),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: GoogleFonts.spaceMono(fontSize: 30),
                              ),
                              Text(
                                "1",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 20, color: Colors.green),
                              ),
                              Text(
                                "-",
                                style: GoogleFonts.spaceMono(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
