// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fudi/Pages/Order/ordersPage.dart';
import 'package:google_fonts/google_fonts.dart';

class Orderdescription extends StatefulWidget {
  const Orderdescription({super.key});

  @override
  State<Orderdescription> createState() => _OrderdescriptionState();
}

class _OrderdescriptionState extends State<Orderdescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 221, 206, 206),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
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
                          builder: (context) => const OrdersPage(
                                foodNames: [],
                                totalPrice: 0,
                              )));
                },
              ),
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    "Help",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order #',
                            style: GoogleFonts.poppins(fontSize: 19),
                          ),
                          Text(
                            'Monday, October 7 at 08:15 AM',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: Colors.grey[600]),
                          )
                        ],
                      ),
                      Text(
                        'Created',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double
                            .infinity, // Make the column take up the full width
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // This will work now
                          children: [
                            Text(
                              'Restaurant',
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                            Text(
                              'Mr Liverpool',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
