// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fudi/Pages/explorePage.dart';
import 'package:fudi/Pages/Payments/paymentPage.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<int> _counters = [1, 1, 1, 1]; // Initialize counters for each item

  void _plateCounter(int index) {
    setState(() {
      _counters[index]++;
    });
  }

  void _plateDecrement(int index) {
    setState(() {
      if (_counters[index] > 1) {
        _counters[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 221, 206, 206),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.only(left: 70),
            child: SizedBox(
              width: 160,
              height: 40,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExplorePage()));
                },
                backgroundColor: Colors.green,
                child: Text(
                  "Add more plates",
                  style:
                      GoogleFonts.spaceMono(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Swipe an item to the left to delete it",
                style: GoogleFonts.spaceMono(fontSize: 16),
              ),
              _buildCartItem(0, "./assets/bugger.png", "Chicken Bugger", 9.5),
              _buildCartItem(
                  1, "./assets/margeritha.png", "Latino Pizza", 10.0),
              _buildCartItem(2, "./assets/pilau.png", "Pilau Vuruga", 15.0),
              _buildCartItem(3, "./assets/hamburger.png", "Beef Bugger ", 12.5),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 15.0,
        right: 30.0,
        child: SizedBox(
          width: 300,
          child: FloatingActionButton(
            heroTag: "continue_to_payment", // To avoid conflicting heros
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => paymentPage()));
            },
            child: Text(
              "Continue to Payment",
              style: GoogleFonts.spaceMono(fontSize: 17, color: Colors.white),
            ),
          ),
        ),
      )
    ]);
  }

  Widget _buildCartItem(
      int index, String imagePath, String title, double price) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        width: 350,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white54,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                height: 70,
                width: 70,
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.spaceMono(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\$ $price",
                      style: GoogleFonts.spaceMono(
                          fontSize: 18, color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                height: 140,
                width: 30,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 215, 211, 211),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        child: Text(
                          "+",
                          style: GoogleFonts.spaceMono(fontSize: 30),
                        ),
                        onTap: () {
                          _plateCounter(index);
                        },
                      ),
                      Text(
                        "${_counters[index]}",
                        style: GoogleFonts.spaceMono(
                            fontSize: 20, color: Colors.green),
                      ),
                      InkWell(
                        child: Text(
                          "-",
                          style: GoogleFonts.spaceMono(fontSize: 30),
                        ),
                        onTap: () {
                          _plateDecrement(index);
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
