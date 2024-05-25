// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FudiDescription extends StatefulWidget {
  const FudiDescription({super.key});

  @override
  _FudiDescriptionState createState() => _FudiDescriptionState();
}

class _FudiDescriptionState extends State<FudiDescription> {
  int _counter = 1;

  void _plateCounter() {
    setState((() {
      _counter++;
    }));
  }

  void _plateDecrement() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        title: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 70,
              height: 30,
              child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: Text(
                    "Back",
                    style: GoogleFonts.spaceMono(
                        fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                CupertinoIcons.heart,
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                      padding: const EdgeInsets.only(left: 20),
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
                              fontSize: 20,
                              color: const Color.fromARGB(255, 99, 98, 98),
                            ),
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
                              fontSize: 20,
                              color: const Color.fromARGB(255, 99, 98, 98),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: FloatingActionButton(
                                  onPressed: _plateDecrement,
                                  tooltip: "Decrement",
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "$_counter",
                                style: GoogleFonts.spaceMono(fontSize: 15),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.green,
                                  onPressed: _plateCounter,
                                  tooltip: "Increment",
                                  child: Icon(Icons.add),
                                ),
                              )
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
                  padding: const EdgeInsets.only(right: 180),
                  child: Text("Details",
                      style: GoogleFonts.spaceMono(
                          fontSize: 35, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                      "Roasted Biryani features succulent, marinated meat roasted to perfection, combined with aromatic spices and tender basmati rice. Garnished with crispy fried onions, fresh coriander, and a squeeze of lemon, it offers a delightful culinary experience. Perfectly paired with cooling raita, this dish promises a hearty and satisfying meal.",
                      style: GoogleFonts.spaceMono(fontSize: 18)),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 15.0,
            right: 30.0,
            child: SizedBox(
              width: 300,
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {},
                child: Text(
                  "Add to cart",
                  style:
                      GoogleFonts.spaceMono(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
