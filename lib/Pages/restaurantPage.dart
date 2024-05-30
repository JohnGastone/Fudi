// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:fudi/Pages/restaurantsPage.dart";
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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      child: Image.asset(
                        "./assets/arrow-left.png",
                        color: Colors.green,
                        height: 40,
                        width: 40,
                      ),
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RestaurantsPage()));
                      },
                    )),
              ),
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
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  (Icons.electric_bike),
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "10-17",
                                  style: GoogleFonts.spaceMono(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                            Text("mins",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 14, color: Colors.grey))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Text(
                          "5.0",
                          style: GoogleFonts.spaceMono(
                              fontSize: 15, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15, left: 25),
                            child: Row(
                              children: [
                                Text(
                                  "Map",
                                  style: GoogleFonts.spaceMono(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.location_on,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(right: 225),
                    child: Text(
                      "Kinondoni B",
                      style: GoogleFonts.spaceMono(
                          fontSize: 15, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: TextField(
                      style: GoogleFonts.spaceMono(
                          fontSize: 15, color: Colors.white),
                      autocorrect: EditableText.debugDeterministicCursor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        label: Text(
                          "Search food ",
                          style: GoogleFonts.spaceMono(
                              fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
