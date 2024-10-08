// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/Pages/Restaurants/restaurantPage.dart';
import 'package:fudi/models/restaurants_model.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({super.key});

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<RestaurantModel> displayList = List.from(RestaurantList.displayList);

  void updateList(String value) {
    setState(() {
      displayList = RestaurantList.getRestaurants
          .where((element) => element.restaurantName!
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Are you looking for a specific dish spot? ",
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                height: 33,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 14),
                  child: TextField(
                    style: GoogleFonts.poppins(fontSize: 14),
                    onChanged: (value) => updateList(value),
                    decoration: InputDecoration(
                        hintText: "E.g Unyamani Cafe",
                        hintStyle: GoogleFonts.poppins(fontSize: 12),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Trending this week",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 236,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: displayList.length > 10 ? 10 : displayList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => RestaurantPage(
                            restaurant: displayList[index],
                          ),
                        ));
                  },
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
                                      style: GoogleFonts.poppins(fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 230, 221, 221),
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
                                            GoogleFonts.poppins(fontSize: 15),
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
                                            GoogleFonts.poppins(fontSize: 15),
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
                                          style:
                                              GoogleFonts.poppins(fontSize: 15),
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
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: 300 / 260),
              itemCount: displayList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => RestaurantPage(
                          restaurant: displayList[index],
                        ),
                      ));
                },
                child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: screenWidth * 0.82,
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
                                    color: Color.fromARGB(255, 230, 221, 221),
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
                                            displayList[index].restaurantName!,
                                            style: GoogleFonts.poppins(
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
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.green,
                                            ),
                                            Text(
                                              displayList[index]
                                                  .restaurantLocation!,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.dining_sharp,
                                              color: Colors.green,
                                            ),
                                            Text(
                                              displayList[index]
                                                  .restaurantType!,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
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
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
