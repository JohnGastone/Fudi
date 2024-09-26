import 'package:flutter/material.dart';
import 'package:fudi/Pages/explorePage.dart';
import 'package:fudi/Pages/Payments/paymentPage.dart';
import 'package:google_fonts/google_fonts.dart';

class PlatePage extends StatefulWidget {
  const PlatePage({super.key});

  @override
  State<PlatePage> createState() => _PlatePageState();
}

class _PlatePageState extends State<PlatePage> {
  final List<int> _counters = [1, 1, 1, 1]; // Initialize counters for each item

  final List<String> _titles = [
    "Chicken Bugger",
    "Latino Pizza",
    "Pilau Vuruga",
    "Beef Bugger"
  ];
  final List<String> _imagePaths = [
    "./assets/bugger.png",
    "./assets/margeritha.png",
    "./assets/pilau.png",
    "./assets/hamburger.png"
  ];
  final List<double> _prices = [9.5, 10.0, 15.0, 12.5];

  void _plateCounter(int index) {
    setState(() {
      _counters[index]++;
    });
  }

  void _plateDecrement(int index) {
    setState(() {
      if (_counters[index] > 1) {
        _counters[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                "Swipe an item to the left to delete it",
                style: GoogleFonts.spaceMono(fontSize: 16),
              ),
              // Display the list of cart items
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _titles.length,
                itemBuilder: (context, index) {
                  return _buildCartItem(index);
                },
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 15.0,
        right: 30.0,
        child: SizedBox(
          width: 300,
          child: FloatingActionButton(
            heroTag: "continue_to_payment", // To avoid conflicting heros
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const paymentPage()));
            },
            child: Text(
              "Continue to Payment",
              style: GoogleFonts.spaceMono(fontSize: 17, color: Colors.white),
            ),
          ),
        ),
      )
    ]);
  }

  Widget _buildCartItem(int index) {
    return Dismissible(
      key: Key(_titles[index]), // Unique key for each item
      direction: DismissDirection.endToStart, // Swipe from right to left
      onDismissed: (direction) {
        setState(() {
          _titles.removeAt(index);
          _imagePaths.removeAt(index);
          _prices.removeAt(index);
          _counters.removeAt(index);
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${_titles[index]} dismissed')),
        );
      },
      background: Container(
        color: const Color(0xFF979797).withOpacity(0.1),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
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
              children: [
                Image.asset(
                  _imagePaths[index],
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
                        _titles[index],
                        style: GoogleFonts.spaceMono(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "\$ ${_prices[index]}",
                        style: GoogleFonts.spaceMono(
                            fontSize: 18, color: Colors.green),
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
                          "${_counters[index]}",
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
