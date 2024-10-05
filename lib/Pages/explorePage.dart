// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/Pages/Authentication/loginPage.dart';
import 'package:fudi/Pages/Fav%20Dishes/favDishes.dart';
import 'package:fudi/Pages/Plate/platePage.dart';
import 'package:fudi/Pages/Food/foodDescription.dart';
import 'package:fudi/Pages/Profile/profilePage.dart';
import 'package:fudi/Pages/Restaurants/restaurantsPage.dart';
import 'package:fudi/models/categories_model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/popularFoods_model.dart';
import 'Order/ordersPage.dart';

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
    OrdersPage(
      foodNames: const [],
      totalPrice: 0,
    ),
    FavdishesPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(57, 255, 255, 255),
          title: Column(
            children: [
              Row(
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
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "Enter your location"),
                                        style: GoogleFonts.poppins(
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
                                                style: GoogleFonts.poppins(
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
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.black),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          "OK",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.black),
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
                        style: GoogleFonts.poppins(fontSize: 16),
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
                                    "User Manager  ",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  content: Row(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: 100,
                                            child: FloatingActionButton(
                                              backgroundColor: Colors.green,
                                              child: Text(
                                                "Log Out",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Loginpage()));
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 26,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: 100,
                                            child: FloatingActionButton(
                                              backgroundColor: Colors.green,
                                              child: Text(
                                                "Profile",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Profilepage()));
                                              },
                                            ),
                                          )
                                        ],
                                      ),
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
                    child: Image.asset(
                      "./assets/plate.png",
                      color: Colors.green,
                      height: 30,
                      width: 30,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PlatePage()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            _pages[_selectedIndex],
            Positioned(
              bottom: 0,
              left: 1,
              right: 1,
              child: ClipRRect(
                child: BottomNavigationBar(
                  selectedLabelStyle: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.bold),
                  unselectedLabelStyle: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.bold),
                  backgroundColor: const Color.fromARGB(58, 52, 51, 51),
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            _selectedIndex == 0
                                ? Colors.green
                                : const Color.fromARGB(255, 33, 31, 31),
                            BlendMode.srcIn),
                        child: Image.asset(
                          "./assets/explore.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      label: 'Explore Foods',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            _selectedIndex == 1
                                ? Colors.green
                                : const Color.fromARGB(255, 33, 31, 31),
                            BlendMode.srcIn),
                        child: Image.asset(
                          "./assets/resta.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      label: 'Restaurants',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            _selectedIndex == 2
                                ? Colors.green
                                : const Color.fromARGB(255, 33, 31, 31),
                            BlendMode.srcIn),
                        child: Image.asset(
                          "./assets/orders.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      label: 'Orders',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            _selectedIndex == 3
                                ? Colors.green
                                : const Color.fromARGB(255, 33, 31, 31),
                            BlendMode.srcIn),
                        child: Image.asset(
                          "./assets/favdishes.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      label: 'Fav Dishes',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.green,
                  unselectedItemColor: const Color.fromARGB(255, 33, 31, 31),
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
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  static List<CategoriesModel> displayList =
      List.from(CategoriesList.displayList);

  static List<PopularFoodsModel> displayPopularFoods =
      List.from(PopularFoodsList.displayPopularFoods);

  void updateList(String value) {
    setState(() {
      displayPopularFoods = PopularFoodsList.displayPopularFoods
          .where((element) =>
              element.foodName!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 55),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text.rich(TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Get your food",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: const Color.fromARGB(255, 99, 98, 98),
                    ),
                  ),
                  TextSpan(
                    text: " Delivered",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                      text: " at your doorstep.",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: const Color.fromARGB(255, 99, 98, 98),
                      ))
                ])),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Varieties",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ])),
                    Text.rich(TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "View all",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.green))
                    ]))
                  ],
                ),
              ),
              SizedBox(
                height: 180,
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
                                color: Color.fromARGB(255, 230, 221, 221),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
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
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                      color: Colors.green,
                                    ),
                                  ),
                                  onTap: () {},
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
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Popular Now",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ])),
                    Text.rich(TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "View all",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.green))
                    ]))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 10),
                    itemCount: displayPopularFoods.length,
                    itemBuilder: (context, index) => InkWell(
                      child: Container(
                        height: 265,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 230, 221, 221),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 30,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30))),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 12.0, top: 5),
                                  child: Text(
                                      displayPopularFoods[index]
                                          .restaurantName!,
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                            255, 99, 98, 98),
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  displayPopularFoods[index].foodCoverImage!,
                                  height: 90,
                                  width: 90,
                                ),
                                Text(
                                  displayPopularFoods[index].foodName!,
                                  style: GoogleFonts.poppins(
                                    fontSize: 19,
                                  ),
                                ),
                                Text.rich(TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: "Tsh ",
                                      style: GoogleFonts.poppins(fontSize: 20)),
                                  TextSpan(
                                    text:
                                        "${displayPopularFoods[index].foodPrice} ",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15, color: Colors.green),
                                  )
                                ]))
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => FudiDescription(
                                      popularFood: displayPopularFoods[index],
                                    )));
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60)
            ],
          ),
        ),
        Column(children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Are you looking for a specific dish? ",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
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
                      hintText: "E.g Makange Nyama",
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
        ]),
      ]),
    );
  }
}
