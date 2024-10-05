import 'package:flutter/material.dart';
import 'package:fudi/Pages/Order/orderTracker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrdersPage extends StatelessWidget {
  final List<String> foodNames;
  final double totalPrice;

  const OrdersPage({
    super.key,
    required this.foodNames,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    final orders = orderProvider.orders;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Column(
            children: [
              Text(
                "My Orders",
                style: GoogleFonts.poppins(fontSize: 20),
              ),
              Text(
                "Swipe an order to the left to remove it",
                style: GoogleFonts.poppins(fontSize: 17),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: double.maxFinite,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    final order = orders[index];

                    return Dismissible(
                      key:
                          UniqueKey(), // A unique key is needed for each dismissible item
                      direction: DismissDirection
                          .endToStart, // Swipe from right to left
                      onDismissed: (direction) {
                        // Remove the item from the list on swipe
                        orderProvider.removeOrder(index);

                        // Show a snackbar to notify the user
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Order #${index + 1} dismissed',
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                        );
                      },
                      background: Container(
                        color: const Color(0xFF979797).withOpacity(0.1),
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.green,
                        ),
                      ),
                      child: Card(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 35,
                                  width: 115,
                                  decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Reorder",
                                          style:
                                              GoogleFonts.poppins(fontSize: 15),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Image.asset(
                                          "./assets/order4.png",
                                          color: Colors.white,
                                          height: 25,
                                          width: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Order #${index + 1}',
                                style: GoogleFonts.poppins(),
                              ),
                              Text(
                                'Items: ${order['foodNames'].join(' | ')}',
                                style: GoogleFonts.poppins(),
                              ),
                              Text(
                                'Total Price: Tsh ${order['totalPrice'].toStringAsFixed(2)}',
                                style: GoogleFonts.poppins(),
                              ),
                              Text(
                                'Date: ${order['date'].toString()}',
                                style: GoogleFonts.poppins(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
