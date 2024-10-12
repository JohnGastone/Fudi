import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/Pages/Order/orderDescription.dart';
import 'package:fudi/Pages/Order/orderTracker.dart';
import 'package:fudi/Pages/explorePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrdersPage extends StatefulWidget {
  final List<String> foodNames;
  final double totalPrice;

  const OrdersPage({
    super.key,
    required this.foodNames,
    required this.totalPrice,
  });

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  String _selectedOrderType = 'All';

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    final orders = orderProvider.orders;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
              InkWell(
                child: Image.asset(
                  "./assets/explore.png",
                  color: Colors.green,
                  height: 30,
                  width: 30,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          orders.isEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Your have no orders yet. Please add food into your plate then place order",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        SizedBox(
                          height: double.maxFinite,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: orders.length,
                            itemBuilder: (context, index) {
                              final order = orders[index];

                              return Dismissible(
                                key: UniqueKey(),
                                direction: DismissDirection.endToStart,
                                onDismissed: (direction) {
                                  orderProvider.removeOrder(index);

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
                                  color:
                                      const Color(0xFF979797).withOpacity(0.1),
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.green,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    // Pass the order details to the Orderdescription page
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) => Orderdescription(
                                          orderNumber: index + 1,
                                          restaurantNames:
                                              order['restaurantNames']
                                                  .join(' | '),
                                          foodNames:
                                              order['foodNames'].join(' | '),
                                          totalPrice: order['totalPrice'],
                                          date: order['date'].toString(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: ListTile(
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              height: 35,
                                              width: 115,
                                              decoration: const BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0, right: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Reorder",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 15),
                                                    ),
                                                    const SizedBox(width: 3),
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
                                            'Restaurant(s): ${order['restaurantNames'].join(' | ')}',
                                            style: GoogleFonts.poppins(),
                                          ),
                                          Text(
                                            'Item(s): ${order['foodNames'].join(' | ')}',
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
          _buildOrderTypeSelector(),
        ],
      ),
    );
  }

  Widget _buildOrderTypeSelector() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTypeButton('All', _selectedOrderType == 'All'),
          _buildTypeButton('Ongoing', _selectedOrderType == 'Ongoing'),
          _buildTypeButton('Completed', _selectedOrderType == 'Completed'),
        ],
      ),
    );
  }

  // Widget _buildOrderList() {
  //   switch (_selectedOrderType) {
  //     case 'All':
  //       return _buildAllOrderList();
  //     case 'Ongoing':
  //       return _buildOngoingOrderList();
  //     case 'Completed':
  //       return _buildCompletedOrderList();
  //     default:
  //       return _buildAllOrderList();
  //   }
  // }

  Widget _buildTypeButton(String text, bool isSelected) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedOrderType = text;
        });
      },
      child: Container(
        height: 35,
        width: 100,
        decoration: BoxDecoration(
            color: isSelected ? Colors.green : Colors.transparent,
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
                color: isSelected ? Colors.white : Colors.grey),
          ),
        ),
      ),
    );
  }
}
