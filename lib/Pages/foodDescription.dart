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
                            width: 5,
                          ),
                          Text(
                            "3",
                            style: GoogleFonts.spaceMono(fontSize: 15),
                          ),
                          SizedBox(
                            width: 5,
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
                            width: 5,
                          ),
                          Text(
                            "3",
                            style: GoogleFonts.spaceMono(fontSize: 15),
                          ),
                          SizedBox(
                            width: 5,
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
                            width: 5,
                          ),
                          Text(
                            "3",
                            style: GoogleFonts.spaceMono(fontSize: 15),
                          ),
                          SizedBox(
                            width: 5,
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
            )
          ],
        ),
      ),
    );
  }
}
