import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/Pages/Order/ordersPage.dart';
import 'package:fudi/Pages/Payments/paymentPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Orderdescription extends StatefulWidget {
  final int orderNumber;
  final String restaurantNames;
  final String foodNames;
  final double totalPrice;
  final String date;

  const Orderdescription({
    super.key,
    required this.orderNumber,
    required this.restaurantNames,
    required this.foodNames,
    required this.totalPrice,
    required this.date,
  });

  @override
  State<Orderdescription> createState() => _OrderdescriptionState();
}

class _OrderdescriptionState extends State<Orderdescription> {
  final double deliveryFee = 2500.00;
  final double courierTip = 500.00;
  final double serviceFee = 0.00;
  @override
  Widget build(BuildContext context) {
    // Calculate grand total by accessing widget.totalPrice
    final grandTotal = deliveryFee + courierTip + widget.totalPrice;
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
                      ),
                    ),
                  );
                },
              ),
              Container(
                height: 30,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Divider(color: Colors.black),
                    // Order details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order #${widget.orderNumber}',
                              style: GoogleFonts.poppins(fontSize: 19),
                            ),
                            Text(
                              widget.date,
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
                    const SizedBox(height: 15),
                    // Restaurant information
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Restaurant(s)',
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                widget.restaurantNames,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Items in the plate:',
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                widget.foodNames,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const Divider(color: Colors.black),
                    const SizedBox(height: 15),
                    // Total price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Price:',
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        Text(
                          'Tsh ${widget.totalPrice.toStringAsFixed(2)}',
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.black),
                    // Subtotal, Delivery Fee, etc.
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.grey[600]),
                            ),
                            Text(
                              'Tsh ${widget.totalPrice.toStringAsFixed(2)}',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.grey[600]),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery fee',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.grey[600]),
                            ),
                            Text(
                              'Tsh ${deliveryFee.toStringAsFixed(2)}',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.grey[600]),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Courier tip',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.grey[600]),
                            ),
                            Text(
                              'Tsh ${courierTip.toStringAsFixed(2)}',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.grey[600]),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Service fee',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.grey[600]),
                            ),
                            Text(
                              'Tsh ${serviceFee.toStringAsFixed(2)}',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.grey[600]),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Grand Total:',
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                            Text(
                              'Tsh ${grandTotal.toStringAsFixed(2)} ',
                              style: GoogleFonts.poppins(fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(color: Colors.black),
                      ],
                    ),
                    const SizedBox(height: 15),
                    // Delivery information
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
                                'Deliver to:',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                              Text(
                                'Mabibo Mwisho',
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
                    const Divider(color: Colors.black),
                    const SizedBox(height: 15),
                    // Payment Status
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
                                'Payment Status',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                              Text(
                                'Unpaid',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.red[200],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.black),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 200,
              height: 50,
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const paymentPage(),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    'Pay Now',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
