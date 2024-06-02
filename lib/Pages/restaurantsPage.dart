// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:fudi/Pages/restaurantPage.dart';
import 'package:fudi/models/restaurants_model.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({super.key});

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<RestaurantModel> displayList = List.from(RestaurantList.displayList);
  List<RestaurantModel> searchList = List.from(RestaurantList.displayList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Are you looking for a specific dish spot? ",
              style: GoogleFonts.spaceMono(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 43,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: GoogleFonts.spaceMono(fontSize: 14),
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                        border: InputBorder.none),
                  ),
                ),
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
              height: 236,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: displayList.length > 10 ? 10 : displayList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 180, // Set a fixed width for each item
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 124,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    displayList[index].coverImage!,
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 135),
                                child: Container(
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${displayList[index].restaurantRanking!}",
                                      style:
                                          GoogleFonts.spaceMono(fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 158, 181, 199),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.food_bank, color: Colors.green),
                                    Expanded(
                                      child: Text(
                                        displayList[index].restaurantName!,
                                        style:
                                            GoogleFonts.spaceMono(fontSize: 15),
                                        overflow: TextOverflow
                                            .ellipsis, // Handle long text
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 90),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star_outline,
                                          color: Colors.green),
                                      Text(
                                        "${displayList[index].restaurantRating!}",
                                        style:
                                            GoogleFonts.spaceMono(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,
                                          color: Colors.green),
                                      Expanded(
                                        child: Text(
                                          displayList[index]
                                              .restaurantLocation!,
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15),
                                          overflow: TextOverflow
                                              .ellipsis, // Handle long text
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 1),
                itemCount: displayList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RestaurantPage()));
                  },
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
                                  Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            displayList[index].coverImage!,
                                          ),
                                          fit: BoxFit.cover),
                                    ),
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
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 50),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                displayList[index]
                                                    .restaurantLocation!,
                                                style: GoogleFonts.spaceMono(
                                                    fontSize: 15),
                                              ),
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
