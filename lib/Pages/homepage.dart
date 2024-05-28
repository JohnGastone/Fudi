// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fudi/Pages/cartPage.dart';
import 'package:fudi/Pages/foodDescription.dart';
import 'package:fudi/Pages/restaurantsPage.dart';
import 'package:fudi/models/categories_model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/popularFoods_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    ExplorePage(),
    RestaurantsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 221, 206, 206),
          title: Row(
            children: [
              Image.asset(
                "./assets/fudi.png",
                height: 60,
                width: 60,
              ),
              SizedBox(
                width: 35,
              ),
              Row(
                children: [
                  InkWell(
                    child: Icon(
                      Icons.location_pin,
                      size: 20,
                      color: Colors.green,
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
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Nathan John",
                    style: GoogleFonts.spaceMono(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: Colors.green,
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Click the button to logout",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 16, color: Colors.black),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.green,
                                      child: Text(
                                        "Log Out",
                                        style:
                                            GoogleFonts.spaceMono(fontSize: 16),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                  )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 221, 206, 206),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                },
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            _pages[_selectedIndex],
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: BottomNavigationBar(
                  selectedLabelStyle: GoogleFonts.spaceMono(fontSize: 12),
                  unselectedLabelStyle: GoogleFonts.spaceMono(fontSize: 12),
                  backgroundColor: Colors.white24,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.explore),
                      label: 'Explore',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.restaurant),
                      label: 'Restaurants',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Profile',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.green,
                  onTap: _onItemTapped,
                  elevation: 10,
                ),
              ),
            )
          ],
        ));
  }
}

class ExplorePage extends StatefulWidget {
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  static List<CategoriesModel> displayList =
      List.from(CategoriesList.displayList);

  static List<PopularFoodsModel> displayPopularFoods =
      List.from(PopularFoodsList.displayPopularFoods);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "Get your food",
                  style: GoogleFonts.spaceMono(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 99, 98, 98),
                  ),
                ),
                TextSpan(
                  text: " Delivered",
                  style: GoogleFonts.spaceMono(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                    text: " at your doorstep.",
                    style: GoogleFonts.spaceMono(
                      fontSize: 22,
                      color: const Color.fromARGB(255, 99, 98, 98),
                    ))
              ])),
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: displayList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 160,
                          width: 110,
                          margin: EdgeInsets.only(
                              right: 10), // Add space between items
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 92, 148, 93),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                displayList[index].categoryImage!,
                                height: 60,
                                width: 60,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                displayList[index].categoryName!,
                                style: GoogleFonts.spaceMono(
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Popular Now",
                        style: GoogleFonts.spaceMono(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ])),
                  Text.rich(TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "View all",
                        style: GoogleFonts.spaceMono(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: Colors.green))
                  ]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 290,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemCount: displayList.length,
                  itemBuilder: (context, index) => InkWell(
                    child: Container(
                      height: 245,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 216, 216),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Image.asset(
                            displayPopularFoods[index].foodCoverImage!,
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            displayPopularFoods[index].foodName!,
                            style: GoogleFonts.spaceMono(
                              fontSize: 19,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 10),
                            child: Row(
                              children: [
                                Text(
                                  displayPopularFoods[index].foodTag!,
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 15,
                                    color:
                                        const Color.fromARGB(255, 99, 98, 98),
                                  ),
                                ),
                                Image.asset(
                                  "./assets/fire.png",
                                  height: 30,
                                  width: 30,
                                )
                              ],
                            ),
                          ),
                          Text(
                            "${displayPopularFoods[index].foodPrice}",
                            style: GoogleFonts.spaceMono(
                                fontSize: 20, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FudiDescription()));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: GoogleFonts.spaceMono(fontSize: 25),
      ),
    );
  }
}
