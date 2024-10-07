import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/Pages/Order/ordersPage.dart';
import 'package:fudi/Pages/Payments/paymentPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                decoration: const BoxDecoration(
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Divider(
                      color: Colors.black,
                    ),
                    // Order details
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
                    const SizedBox(height: 15),
                    // Restaurant information
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Restaurant',
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        Row(
                          children: [
                            Text(
                              'Mr Liverpool',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(width: 30),
                            InkWell(
                              onTap: () async {
                                final Uri phoneUri = Uri(
                                  scheme: 'tel',
                                  path:
                                      '+255624839009', // Replace with actual number
                                );

                                try {
                                  if (await canLaunchUrl(phoneUri)) {
                                    await launchUrl(
                                      phoneUri,
                                      mode: LaunchMode.externalApplication,
                                    );
                                  } else {
                                    throw 'Could not launch $phoneUri';
                                  }
                                } catch (e) {
                                  print('Error launching phone call: $e');
                                }
                              },
                              child: Image.asset(
                                './assets/phonecall.png',
                                height: 20,
                                width: 20,
                                color: Colors.green[600],
                              ),
                            ),
                          ],
                        ),
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
                    const SizedBox(height: 15),
                    // Items and Total
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Items in the plate:',
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                            Text(
                              'Tsh 45000',
                              style: GoogleFonts.poppins(fontSize: 18),
                            )
                          ],
                        ),
                        Text(
                          'Chips yai | Ugali kuku choma | Makange Ngisi',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.black),
                    const SizedBox(height: 15),
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
                              'Tsh 45000',
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
                              'Tsh 2500',
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
                              'Tsh 500',
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
                              'Tsh 0',
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
                              'Grand Total',
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                            Text(
                              'Tsh 48000',
                              style: GoogleFonts.poppins(fontSize: 18),
                            )
                          ],
                        ),
                        const Divider(color: Colors.black),
                      ],
                    ),
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
                          builder: (context) => const paymentPage()));
                },
                child: Center(
                  child: Text(
                    'Pay Now',
                    style:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.white),
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
