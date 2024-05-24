// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 230, 230),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("./assets/fudi.png"),
            ),
            SizedBox(
              width: 60,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  size: 20,
                  color: Colors.green,
                ),
                Text(
                  "Jenny Wilson",
                  style: GoogleFonts.spaceMono(fontSize: 16),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 224, 219, 219),
              child: Icon(Icons.menu_sharp),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 135),
              child: Column(
                children: [
                  Text(
                    "Get your food",
                    style: GoogleFonts.spaceMono(
                        fontSize: 22,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                  Text("Delivered!",
                      style: GoogleFonts.spaceMono(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.spaceMono(
                          fontSize: 25, fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Image.asset(
                          './assets/pizza.jpg',
                          height: 60,
                          width: 60,
                        ),
                        Text(
                          "Pizza",
                          style: GoogleFonts.mulish(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 238, 235, 235),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Popular Now",
                        style: GoogleFonts.mulish(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ])),
                  Text.rich(TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "View all",
                        style: GoogleFonts.mulish(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: Colors.green))
                  ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
