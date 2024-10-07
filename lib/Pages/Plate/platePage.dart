// ignore_for_file: unused_field

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fudi/Pages/Order/orderTracker.dart';
import 'package:fudi/Pages/Order/ordersPage.dart';
import 'package:fudi/Pages/explorePage.dart';
import 'package:fudi/models/plateModel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlatePage extends StatefulWidget {
  const PlatePage({super.key});

  @override
  State<PlatePage> createState() => _PlatePageState();
}

class _PlatePageState extends State<PlatePage> {
  String _image = '';
  String _name = '';
  double _price = 0.0;
  String _size = 'M';
  int _quantity = 1;
  double total = 0.0; // To store total price

  final List<int> _counters = [1, 1, 1, 1]; // Initialize counters for each item

  void _plateCounter(int index) {
    setState(() {
      Provider.of<CartModel>(context, listen: false).cartItems[index]
          ['quantity']++;
      _calculateTotal(); // Recalculate total after increment
    });
  }

  void _plateDecrement(int index) {
    setState(() {
      if (Provider.of<CartModel>(context, listen: false).cartItems[index]
              ['quantity'] >
          1) {
        Provider.of<CartModel>(context, listen: false).cartItems[index]
            ['quantity']--;
        _calculateTotal(); // Recalculate total after decrement
      }
    });
  }

  // Retrieve the data from SharedPreferences
  Future<void> _loadFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _image = prefs.getString('image') ?? '';
      _name = prefs.getString('name') ?? '';
      _price = prefs.getDouble('price') ?? 0.0;
      _size = prefs.getString('size') ?? 'M';
      _quantity = prefs.getInt('quantity') ?? 1;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadFromSharedPreferences();
    _calculateTotal();
  }

  void _calculateTotal() {
    final cartItems = Provider.of<CartModel>(context, listen: false).cartItems;
    double newTotal = 0.0;

    for (var item in cartItems) {
      newTotal += item['price'] * item['quantity'];
    }

    setState(() {
      total = newTotal;
    });
  }

  Future<void> generateInvoicePdf() async {
    final cartItems = Provider.of<CartModel>(context, listen: false).cartItems;

    final pdf = pw.Document();
    // Load image from assets
    final Uint8List imageData = await rootBundle
        .load('assets/fudi.png')
        .then((data) => data.buffer.asUint8List());
    final watermarkImage = pw.MemoryImage(imageData);

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Stack(children: [
            // Watermark Image behind other content
            pw.Positioned(
              top: 150,
              left: 100,
              child: pw.Opacity(
                opacity: 0.1, // Make the watermark semi-transparent
                child: pw.Image(watermarkImage, width: 400, height: 400),
              ),
            ),

            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Invoice',
                    style: pw.TextStyle(
                        fontSize: 40, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 20),
                pw.Text('Items:', style: const pw.TextStyle(fontSize: 24)),
                pw.SizedBox(height: 10),
                pw.TableHelper.fromTextArray(
                  context: context,
                  data: <List<String>>[
                    <String>['Item', 'Quantity', 'Size', 'Price'],
                    ...cartItems.map((item) => [
                          item['name'],
                          item['quantity'].toString(),
                          item['size'] == 'S'
                              ? 'Small'
                              : item['size'] == 'M'
                                  ? 'Medium'
                                  : 'Large',
                          'Tsh ${item['price'].toStringAsFixed(2)}',
                        ])
                  ],
                ),
                pw.SizedBox(height: 20),
                pw.Text('Total: Tsh ${total.toStringAsFixed(2)}',
                    style: const pw.TextStyle(fontSize: 24)),
                pw.SizedBox(height: 20),
                pw.Text(
                  'Thank you for your purchase!',
                ),
                pw.SizedBox(height: 20),
                pw.Text('This invoice is generated automatically.'),
                pw.SizedBox(height: 20),
                pw.Text('Contact us at 0624-839-009 for any questions.'),
                pw.Spacer(), // This pushes the content below to the bottom

                pw.Align(
                  alignment: pw.Alignment.center,
                  child: pw.Text(
                    'All Rights Reserved under FUDI ownership',
                    style: pw.TextStyle(
                        fontSize: 12, fontStyle: pw.FontStyle.italic),
                  ),
                ),
              ],
            )
          ]);
        },
      ),
    );

    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save());
  }

  @override
  Widget build(BuildContext context) {
    final cartItems = Provider.of<CartModel>(context).cartItems;

    return Stack(children: [
      Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 206, 206),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 221, 206, 206),
          automaticallyImplyLeading: false,
          title: Center(
            child: SizedBox(
              width: 300,
              height: 40,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
                backgroundColor: Colors.green,
                child: Text(
                  "Add more to this plate",
                  style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Swipe an item to the left to remove it",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return _buildCartItem(index);
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 12.0, right: 12, bottom: 12, top: 150),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 480.0),
                child: Container(
                  width: 135,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      "Total: ${total.toStringAsFixed(2)}", // Display total price
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 470.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: FloatingActionButton(
                        heroTag: "download_invoice",
                        backgroundColor: Colors.green,
                        onPressed: () async {
                          final cartModel =
                              Provider.of<CartModel>(context, listen: false);

                          if (cartModel.getFoodNames().isNotEmpty) {
                            // If there are items in the plate, generate the invoice PDF
                            await generateInvoicePdf();
                          } else {
                            // Show a message or alert to the user
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Add a food to the plate before downloading the invoice.",
                                  style: GoogleFonts.poppins(),
                                ),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Download Invoice",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: 180,
                        height: 40,
                        child: FloatingActionButton(
                          heroTag: "continue_to_payment",
                          backgroundColor: Colors.green,
                          onPressed: () {
                            final cartModel =
                                Provider.of<CartModel>(context, listen: false);

                            if (cartModel.getFoodNames().isEmpty) {
                              // If the cart is empty, show a message to the user
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Add a food to the plate before placing an order",
                                    style: GoogleFonts.poppins(),
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else {
                              final orderProvider = Provider.of<OrderProvider>(
                                  context,
                                  listen: false);

                              final foodNames = cartModel.getFoodNames();
                              final totalPrice = cartModel.getTotalPrice();

                              // Add the order to the OrderProvider before navigating
                              orderProvider.addOrder(foodNames, totalPrice);

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrdersPage(
                                    foodNames: foodNames,
                                    totalPrice: totalPrice,
                                  ),
                                ),
                              );

                              // Clear the cart after placing the order
                              cartModel.clearCart();
                            }
                          },
                          child: Text(
                            "Place your order",
                            style: GoogleFonts.poppins(
                                fontSize: 17, color: Colors.white),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }

  Widget _buildCartItem(int index) {
    final cartItems = Provider.of<CartModel>(context).cartItems;

    return Dismissible(
      key: Key(cartItems[index]['image']), // Unique key for each item
      direction: DismissDirection.endToStart, // Swipe from right to left
      onDismissed: (direction) {
        setState(() {
          Provider.of<CartModel>(context, listen: false).removeFromCart(index);
          _calculateTotal(); // Recalculate total after item removal
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${cartItems[index]['name']} dismissed')),
        );
      },
      background: Container(
        color: const Color(0xFF979797).withOpacity(0.1),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.green),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          width: 350,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white54,
          ),
          child: Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    cartItems[index]['image'],
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${cartItems[index]['name']}",
                          style: GoogleFonts.poppins(fontSize: 20),
                          maxLines: 2, // Restrict to 2 lines
                          overflow: TextOverflow
                              .ellipsis, // Add ellipsis for overflow
                          softWrap: true, // Enable wrapping
                        ),
                        const SizedBox(height: 6),
                        Text.rich(TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "Size: ",
                              style: GoogleFonts.poppins(
                                  fontSize: 19, color: Colors.grey)),
                          TextSpan(
                            text: cartItems[index]['size'] == 'S'
                                ? 'Small'
                                : cartItems[index]['size'] == 'M'
                                    ? 'Medium'
                                    : 'Large', // Default case for 'L'
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.grey),
                          )
                        ])),
                        const SizedBox(height: 6),
                        Text.rich(TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "Tsh ",
                              style: GoogleFonts.poppins(
                                  fontSize: 25, color: Colors.green)),
                          TextSpan(
                            text:
                                " ${cartItems[index]['price']}", // Default case for 'L'
                            style: GoogleFonts.poppins(
                                fontSize: 20, color: Colors.green),
                          )
                        ])),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 140,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 215, 211, 211),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            child: Text(
                              "+",
                              style: GoogleFonts.poppins(fontSize: 30),
                            ),
                            onTap: () {
                              _plateCounter(index);
                            },
                          ),
                          Text(
                            "${cartItems[index]['quantity']}",
                            style: GoogleFonts.poppins(
                                fontSize: 20, color: Colors.green),
                          ),
                          InkWell(
                            child: Text(
                              "-",
                              style: GoogleFonts.poppins(fontSize: 30),
                            ),
                            onTap: () {
                              _plateDecrement(index);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
