// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        title: Row(
          children: [
            Card(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.location_pin,
                        size: 20,
                        color: Colors.white,
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
                      "Kinyerezi",
                      style: GoogleFonts.spaceMono(fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
