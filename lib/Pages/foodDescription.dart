// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FudiDescription extends StatelessWidget {
  const FudiDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        title: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                CupertinoIcons.heart,
                color: Colors.white,
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RichText(
                text: TextSpan(
                    text: "Roasted Biryani",
                    style: GoogleFonts.spaceMono(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.black))),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        "\$ 12.50",
                        style: GoogleFonts.spaceMono(
                            fontSize: 35, color: Colors.green),
                      ),
                      Text(
                        "Size",
                        style: GoogleFonts.spaceMono(
                            fontSize: 20, color: Colors.grey),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 209, 204, 204),
                        child: Text(
                          "S",
                          style: GoogleFonts.spaceMono(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "M",
                            style: GoogleFonts.spaceMono(
                                fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 209, 204, 204),
                        child: Text(
                          "L",
                          style: GoogleFonts.spaceMono(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        "Quantity",
                        style: GoogleFonts.spaceMono(
                            fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 214, 212, 212),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "-",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "3",
                            style: GoogleFonts.spaceMono(fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(children: [
                  Image.asset(
                    "./assets/biryani.png",
                    height: 350,
                    width: 200,
                  ),
                ])
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.amberAccent,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "4.9",
                        style: GoogleFonts.spaceMono(fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        './assets/fire.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "145 cal",
                        style: GoogleFonts.spaceMono(fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.clock,
                        color: const Color.fromARGB(255, 148, 138, 104),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "30 minutes",
                        style: GoogleFonts.spaceMono(fontSize: 15),
                      )
                    ],
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text("Details",
                  style: GoogleFonts.spaceMono(
                      fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Roasted Biryani is a tantalizing twist on the classic biryani, featuring succulent pieces of marinated meat roasted to perfection. Each bite bursts with a rich blend of aromatic spices and tender grains of basmati rice, slow-cooked to absorb every flavorful note. The dish is garnished with crispy fried onions, fresh coriander, and a squeeze of lemon for a refreshing finish. Perfectly paired with a side of cooling raita, this roasted biryani promises a delightful culinary experience that is both hearty and satisfying. Indulge in the symphony of spices and textures that make our roasted biryani a favorite among food enthusiasts.",
                  style: GoogleFonts.spaceMono(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
