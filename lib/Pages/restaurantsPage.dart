// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:fudi/models/restaurants_model.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({super.key});

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<RestaurantModel> _restaurantsList =
      List.from(RestaurantList.getRestaurants);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 240,
              height: 38,
              child: Card(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 10.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Kinyerezi",
                          style: GoogleFonts.spaceMono(fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Location",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 16, color: Colors.black),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Enter your location"),
                                    style: GoogleFonts.spaceMono(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: FloatingActionButton(
                                        backgroundColor: Colors.green,
                                        child: Text("Pick from the map",
                                            style: GoogleFonts.spaceMono(
                                                fontSize: 16)),
                                        onPressed: () {
                                          // Integration to google maps
                                        }),
                                  )
                                ],
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.black),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "OK",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.black),
                                    ))
                              ],
                            );
                          });
                    },
                  ),
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 225, 222, 222),
              child: Icon(
                Icons.search,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(
                "Trending this week",
                style: GoogleFonts.spaceMono(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "./assets/hamburger.png",
                                    height: 80,
                                    width: 80,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 110, 142, 168),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.food_bank,
                                                color: Colors.green),
                                            Text(
                                              "Seafood Lovers",
                                              style: GoogleFonts.spaceMono(
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 90),
                                          child: Row(
                                            children: [
                                              Icon(Icons.star_outline,
                                                  color: Colors.green),
                                              Text(
                                                "5.0",
                                                style: GoogleFonts.spaceMono(
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}
