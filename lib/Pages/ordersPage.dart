// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fudi/models/orders_model.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<StatefulWidget> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List<FoodOrdersModel> displayFoodOrders =
      List.from(FoodOrdersList.displayOrders);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              height: 30,
              width: 70,
              child: FloatingActionButton(
                child: Text(
                  "Back",
                  style: GoogleFonts.spaceMono(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Thank you for trusting ",
                    style: GoogleFonts.spaceMono(fontSize: 16)),
                TextSpan(
                    text: "Fudi ",
                    style: GoogleFonts.spaceMono(
                        fontSize: 21, color: Colors.green)),
              ])),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Current Orders",
                      style: GoogleFonts.spaceMono(fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 15,
                    childAspectRatio: 310 / 211),
                itemCount: displayFoodOrders.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.only(right: 15, left: 15, bottom: 15),
                  child: Container(
                    height: 211,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 158, 181, 199),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 24,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Center(
                                  child: Text(
                                    "${displayFoodOrders[index].orderDate!}",
                                    style: GoogleFonts.spaceMono(fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Center(
                                  child: Text(
                                    "${displayFoodOrders[index].orderID}",
                                    style: GoogleFonts.spaceMono(fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset(
                                        "./assets/food.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("Seafood Lovers",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              (Icons.electric_bike),
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "10-17",
                                              style: GoogleFonts.spaceMono(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Text("mins",
                                            style: GoogleFonts.spaceMono(
                                                fontSize: 14,
                                                color: Colors.blueGrey))
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "-> Makange Nyama ",
                              style: GoogleFonts.spaceMono(fontSize: 18),
                            ),
                            Text(
                              "-> Biryani Kuku ",
                              style: GoogleFonts.spaceMono(fontSize: 18),
                            ),
                            Text(
                              "-> Makange Samaki ",
                              style: GoogleFonts.spaceMono(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "Total Amount: ",
                                  style: GoogleFonts.spaceMono(fontSize: 18)),
                              TextSpan(
                                  text: "\$ 20",
                                  style: GoogleFonts.spaceMono(
                                      fontSize: 17, color: Colors.white))
                            ]))
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 135),
                            child: Container(
                              height: 24,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text(
                                  displayFoodOrders[index].orderStatus!,
                                  style: GoogleFonts.spaceMono(fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
