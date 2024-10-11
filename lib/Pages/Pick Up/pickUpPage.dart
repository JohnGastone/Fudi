// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/Pages/Pick%20Up/pickUpTimesModel.dart';
import 'package:google_fonts/google_fonts.dart';

class PickUpPage extends StatefulWidget {
  const PickUpPage({super.key});

  @override
  State<PickUpPage> createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  String activeButton = "Morning";
  PickUpTimesModel? selectedTime;

  List<PickUpTimesModel> displayPickUpsMorningTimes =
      List.from(PickUpMorningTimesList.displayList);
  List<PickUpTimesModel> displayPickUpsAfterNoonTimes =
      List.from(PickUpAfterNoonTimesList.displayList);
  List<PickUpTimesModel> displayPickUpsEveningTimes =
      List.from(PickUpEveningTimesList.getPickUpTimes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 198, 189, 189),
        title: Center(
            child: Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: FloatingActionButton(
                  heroTag: "back_to_home_page", // To avoid conflicting heros

                  backgroundColor: Colors.green,
                  child: Text(
                    "Back",
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              "Pick Up Details",
              style: GoogleFonts.poppins(fontSize: 20),
            ),
          ],
        )),
      ),
      backgroundColor: const Color.fromARGB(255, 221, 206, 206),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Text(
                "Pick Up Time Selection",
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTimeButton("Morning"),
                  _buildTimeButton("Afternoon"),
                  _buildTimeButton("Evening"),
                ],
              ),

              SizedBox(height: 20),

              // Conditionally render the GridView based on the active button
              if (activeButton == "Morning")
                _buildTimeGridView(displayPickUpsMorningTimes)
              else if (activeButton == "Afternoon")
                _buildTimeGridView(displayPickUpsAfterNoonTimes)
              else
                _buildTimeGridView(displayPickUpsEveningTimes),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeButton(String label) {
    bool isActive = activeButton == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          activeButton = label;
        });
      },
      child: Container(
        width: 125,
        height: 50,
        decoration: BoxDecoration(
          color: isActive ? Colors.green : Colors.white,
          border: Border.all(
              width: 1, color: isActive ? Colors.transparent : Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: isActive
                        ? Colors.white
                        : const Color.fromARGB(255, 238, 233, 233),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Icon(
                    isActive ? Icons.light_mode : CupertinoIcons.sunset,
                    color: isActive ? Colors.green : Colors.grey,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: isActive ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build the time GridView
  Widget _buildTimeGridView(List<PickUpTimesModel> appointments) {
    return SizedBox(
      height: 130,
      width: 340,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: appointments.length,
        itemBuilder: (context, index) {
          final appointment = appointments[index];
          final isSelected =
              selectedTime == appointment; // Compare objects directly

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTime = isSelected ? null : appointment;
              });
            },
            child: Container(
              width: 130,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: isSelected ? Colors.green : Colors.grey,
                ),
                color: isSelected
                    ? Colors.green
                    : Colors
                        .transparent, // Make background transparent when not selected
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5),
                child: Center(
                  child: Text(
                    appointment.time!,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
