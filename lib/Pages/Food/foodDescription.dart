// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/Pages/Plate/platePage.dart';
import 'package:fudi/models/fav_dishes_model.dart';
import 'package:fudi/models/plateModel.dart';
import 'package:fudi/models/popularFoods_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FudiDescription extends StatefulWidget {
  final PopularFoodsModel? popularFood;
  const FudiDescription({super.key, this.popularFood});

  @override
  _FudiDescriptionState createState() => _FudiDescriptionState();
}

class _FudiDescriptionState extends State<FudiDescription> {
  int _counter = 1;
  bool isFavorite = false;
  // Available plate sizes
  final List<String> plateSizes = ["S", "M", "L"];

  // Initially selected plate size
  String selectedSize = "M";

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    // Access the provider and update the favorite status
    if (isFavorite) {
      Provider.of<FavoritesModel>(context, listen: false)
          .addToFavorites(widget.popularFood!);
    } else {
      Provider.of<FavoritesModel>(context, listen: false)
          .removeFromFavorites(widget.popularFood!);
    }
  }

  // Function to change the selected size
  void _onSizeSelected(String size) {
    setState(() {
      selectedSize = size;
    });
  }

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

  // Function to save cart to SharedPreferences
  Future<void> _saveToSharedPreferences(String image, String name,
      String restaurant, int price, String size, int quantity) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('image', image);
    prefs.setString('name', name);
    prefs.setString('restaurant', restaurant);
    prefs.setInt('price', price);
    prefs.setString('size', size);
    prefs.setInt('quantity', quantity);
  }

  @override
  Widget build(BuildContext context) {
    final foodName = widget.popularFood?.foodName;
    final restaurantName = widget.popularFood?.restaurantName;
    final foodPrice = widget.popularFood?.foodPrice;
    final foodImage = widget.popularFood?.foodCoverImage;
    final foodDescription = widget.popularFood?.foodDescription;
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
                  heroTag: "back_to_home_page", // To avoid conflicting heros

                  backgroundColor: Colors.green,
                  child: Text(
                    "Back",
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            InkWell(
              onTap: toggleFavorite,
              child: Icon(
                isFavorite ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                color: isFavorite ? Colors.green : Colors.white,
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
                        text: foodName,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.black))),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("For just ",
                          style: GoogleFonts.poppins(fontSize: 21)),
                      Text.rich(TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Tsh ",
                            style: GoogleFonts.poppins(
                                fontSize: 25, color: Colors.green)),
                        TextSpan(
                          text: "$foodPrice",
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: Colors.green),
                        ),
                        TextSpan(
                            text: " at $restaurantName",
                            style: GoogleFonts.poppins(fontSize: 15)),
                      ])),
                      Text(
                        "Size",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 99, 98, 98),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _onSizeSelected("S");
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: selectedSize == "S"
                                        ? Colors.green
                                        : Color.fromARGB(255, 209, 204, 204),
                                    child: Text(
                                      "S",
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: selectedSize == "S"
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {
                                    _onSizeSelected("M");
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: selectedSize == "M"
                                          ? Colors.green
                                          : Color.fromARGB(255, 209, 204, 204),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "M",
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: selectedSize == "M"
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {
                                    _onSizeSelected("L");
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: selectedSize == "L"
                                        ? Colors.green
                                        : Color.fromARGB(255, 209, 204, 204),
                                    child: Text(
                                      "L",
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: selectedSize == "L"
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              foodImage!,
                              height: 150,
                              width: 140,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Quantity",
                        style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(fontSize: 15),
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
                            style: GoogleFonts.poppins(fontSize: 15),
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
                            style: GoogleFonts.poppins(fontSize: 15),
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
                            style: GoogleFonts.poppins(fontSize: 15),
                          )
                        ],
                      ),
                    ])),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text("Description",
                      style: GoogleFonts.poppins(
                          fontSize: 35, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(foodDescription!,
                      style: GoogleFonts.poppins(fontSize: 18)),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 2.0,
            right: 30.0,
            child: SizedBox(
              width: 300,
              child: FloatingActionButton(
                heroTag: "add_to_plate", // To avoid conflicting heros
                backgroundColor: Colors.green,
                onPressed: () {
                  // Save food details to provider and SharedPreferences
                  Provider.of<PlateModel>(context, listen: false).addToPlate(
                      foodImage,
                      foodName!,
                      restaurantName!,
                      foodPrice!,
                      selectedSize,
                      _counter);

                  _saveToSharedPreferences(foodImage, foodName, restaurantName,
                      foodPrice, selectedSize, _counter);

                  // Navigate to the plate page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PlatePage()));
                },
                child: Text(
                  "Add to plate",
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
