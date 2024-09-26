// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:fudi/Pages/explorePage.dart';
import 'package:fudi/Pages/Payments/paymentPage.dart';
import 'package:fudi/models/plateModel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlatePage extends StatefulWidget {
  const PlatePage({super.key});

  @override
  State<PlatePage> createState() => _PlatePageState();
}

class _PlatePageState extends State<PlatePage> {
  String _image = '';
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
      _price = prefs.getDouble('price') ?? 0.0;
      _size = prefs.getString('size') ?? 'M';
      _quantity = prefs.getInt('quantity') ?? 1;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadFromSharedPreferences();
    _calculateTotal(); // Calculate total on page load
  }

  // Function to calculate total price
  void _calculateTotal() {
    final cartItems = Provider.of<CartModel>(context, listen: false).cartItems;
    double newTotal = 0.0;

    for (var item in cartItems) {
      newTotal +=
          item['price'] * item['quantity']; // Multiply price by quantity
    }

    setState(() {
      total = newTotal; // Update total state
    });
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
                          builder: (context) => const ExplorePage()));
                },
                backgroundColor: Colors.green,
                child: Text(
                  "Add more to this plate",
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
                "Swipe an item to the left to remove it",
                style: GoogleFonts.spaceMono(fontSize: 16),
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
        padding: const EdgeInsets.all(12.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 135,
                child: FloatingActionButton(
                  heroTag: "total",
                  backgroundColor: Colors.green,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "Total: \$ ${total.toStringAsFixed(2)}", // Display total price
                      style: GoogleFonts.spaceMono(
                          fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 180,
                child: FloatingActionButton(
                  heroTag: "continue_to_payment",
                  backgroundColor: Colors.green,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const paymentPage()));
                  },
                  child: Text(
                    "Continue to Payment",
                    style: GoogleFonts.spaceMono(
                        fontSize: 17, color: Colors.white),
                  ),
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
          SnackBar(content: Text('${cartItems[index]['image']} dismissed')),
        );
      },
      background: Container(
        color: const Color(0xFF979797).withOpacity(0.1),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white),
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
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartItems[index]['size'],
                        style: GoogleFonts.spaceMono(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "\$ ${cartItems[index]['price']}",
                        style: GoogleFonts.spaceMono(
                            fontSize: 25, color: Colors.green),
                      ),
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
                            style: GoogleFonts.spaceMono(fontSize: 30),
                          ),
                          onTap: () {
                            _plateCounter(index);
                          },
                        ),
                        Text(
                          "${cartItems[index]['quantity']}",
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
