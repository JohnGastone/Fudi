// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:fudi/models/restaurants_model.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({super.key});

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<RestaurantModel> displayList = List.from(RestaurantList.displayList);

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
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: displayList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Padding(
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
                                          displayList[index].coverImage!,
                                          height: 80,
                                          width: 80,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 158, 181, 199),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.food_bank,
                                                      color: Colors.green),
                                                  Text(
                                                    displayList[index]
                                                        .restaurantName!,
                                                    style:
                                                        GoogleFonts.spaceMono(
                                                            fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 90),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.star_outline,
                                                        color: Colors.green),
                                                    Text(
                                                      "${displayList[index].restaurantRating!}",
                                                      style:
                                                          GoogleFonts.spaceMono(
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
                          ])),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text(
                  "Popular Restaurants/Cafe",
                  style: GoogleFonts.spaceMono(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 1),
                itemCount: displayList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(children: [
                        Column(
                          children: [
                            Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Image.asset(
                                    displayList[index].coverImage!,
                                    height: 80,
                                    width: 80,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 158, 181, 199),
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
                                              displayList[index]
                                                  .restaurantName!,
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
                                                "${displayList[index].restaurantRating!}",
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
                      ])),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
