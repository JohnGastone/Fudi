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
              height: double.infinity,
              color: Color.fromARGB(255, 36, 48, 79),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          "./assets/food.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      Text("Seafood Lovers",
                          style: GoogleFonts.spaceMono(fontSize: 25))
                    ],
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
