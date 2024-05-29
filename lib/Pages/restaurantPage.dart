// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("./assets/Seafood.png"),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
