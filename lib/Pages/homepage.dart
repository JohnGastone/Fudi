// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:fudi/Pages/cartPage.dart';
import 'package:fudi/Pages/foodDescription.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    ExplorePage(),
    CartPage(),
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
                  backgroundColor: Color.fromARGB(255, 224, 216, 216),
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

class ExplorePage extends StatelessWidget {
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
              padding: EdgeInsets.only(right: 135),
              child: Column(
                children: [
                  Text(
                    "Get your food",
                    style: GoogleFonts.spaceMono(
                        fontSize: 22,
                        color: const Color.fromARGB(255, 99, 98, 98),
                        fontWeight: FontWeight.w400),
                  ),
                  Text("Delivered!",
                      style: GoogleFonts.spaceMono(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.spaceMono(
                          fontSize: 25, fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Image.asset(
                          './assets/pizza.png',
                          height: 60,
                          width: 60,
                        ),
                        Text(
                          "Pizza",
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
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 170,
                    width: 125,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Image.asset(
                          './assets/bugger.png',
                          height: 90,
                          width: 90,
                        ),
                        Text(
                          "Bugger",
                          style: GoogleFonts.spaceMono(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Image.asset(
                          './assets/pilau.png',
                          height: 60,
                          width: 60,
                        ),
                        Text(
                          "Pilau",
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
                ],
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
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 225,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 216, 216),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            './assets/biryani.png',
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Roast Biryan",
                            style: GoogleFonts.spaceMono(
                              fontSize: 19,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Biryan",
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
                            "\$ 12.5",
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
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Container(
                      height: 215,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 216, 216),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            './assets/mzuzu.png',
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Rice Mzuzu",
                            style: GoogleFonts.spaceMono(
                              fontSize: 19,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Double patty",
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 15,
                                    color:
                                        const Color.fromARGB(255, 99, 98, 98),
                                  ),
                                ),
                                Image.asset(
                                  "./assets/fire.png",
                                  height: 35,
                                  width: 35,
                                )
                              ],
                            ),
                          ),
                          Text(
                            "\$ 7.4",
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 215,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 216, 216),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            './assets/margeritha.png',
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Margeritha Pizza",
                            style: GoogleFonts.spaceMono(
                              fontSize: 17,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Cheesy Pizza",
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
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "\$ 12.5",
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
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Container(
                      height: 215,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 216, 216),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            './assets/hamburger.png',
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Hamburger",
                            style: GoogleFonts.spaceMono(
                              fontSize: 19,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Double patty",
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
                            "\$ 9.5",
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
