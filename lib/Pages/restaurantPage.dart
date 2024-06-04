// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:fudi/Pages/restaurantsPage.dart";
import "package:fudi/models/restaurantFoods_model.dart";
import "package:google_fonts/google_fonts.dart";

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  List<RestaurantfoodsModel> displayFoods =
      List.from(RestaurantFoodlist.displayFoods);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      body: SingleChildScrollView(
        child: Builder(builder: (context) {
          return Column(
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
                height: 2800,
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
                              padding:
                                  const EdgeInsets.only(right: 15, left: 25),
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
                                    color: Colors.green,
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
                      height: 20,
                    ),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: TextField(
                        style: GoogleFonts.spaceMono(
                            fontSize: 15, color: Colors.white),
                        autocorrect: EditableText.debugDeterministicCursor,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Wali kuku",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("5000",
                                  style: GoogleFonts.spaceMono(
                                      fontSize: 16, color: Colors.green)),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.restaurant,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    " 30",
                                    style: GoogleFonts.spaceMono(
                                        fontSize: 15,
                                        color: Colors.greenAccent),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Image.asset(
                            "./assets/hamburger.png",
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    // GridView.builder(
                    //   shrinkWrap: true,
                    //   physics: NeverScrollableScrollPhysics(),
                    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 1, mainAxisSpacing: 1),
                    //   itemCount: displayFoods.length,
                    //   itemBuilder: (context, index) => Padding(
                    //     padding: const EdgeInsets.only(left: 25, right: 15),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Column(
                    //           children: [
                    //             Text(
                    //               displayFoods[index].foodName!,
                    //               style: GoogleFonts.spaceMono(
                    //                   fontSize: 18, color: Colors.white),
                    //             ),
                    //             SizedBox(
                    //               height: 5,
                    //             ),
                    //             Text(
                    //               " ${displayFoods[index].foodPrice!}",
                    //               style: GoogleFonts.spaceMono(
                    //                   fontSize: 15, color: Colors.greenAccent),
                    //             ),
                    //             SizedBox(
                    //               height: 5,
                    //             ),
                    //             Row(
                    //               children: [
                    //                 Icon(
                    //                   Icons.restaurant,
                    //                   color: Colors.grey,
                    //                 ),
                    //                 SizedBox(
                    //                   height: 3,
                    //                 ),
                    //                 Text(
                    //                   "${displayFoods[index].foodImage}",
                    //                   style: GoogleFonts.spaceMono(
                    //                       fontSize: 15, color: Colors.white),
                    //                 ),
                    //               ],
                    //             )
                    //           ],
                    //         ),
                    //         Text("")
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SizedBox(width: 310, child: Divider()),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
