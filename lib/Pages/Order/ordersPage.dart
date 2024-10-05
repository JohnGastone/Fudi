import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Orders Summary",
            style: GoogleFonts.poppins(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Summary:',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: foodNames.length,
              itemBuilder: (context, index) {
                return Text(
                  foodNames[index],
                  style: GoogleFonts.poppins(fontSize: 16),
                );
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Total Price: Tsh ${totalPrice.toStringAsFixed(2)}',
              style: GoogleFonts.poppins(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
