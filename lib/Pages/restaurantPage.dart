// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage("./assets/Seafood.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 800,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 36, 48, 79),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            "./assets/food.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Seafood Lovers",
                            style: GoogleFonts.spaceMono(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
