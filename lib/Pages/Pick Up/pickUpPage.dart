// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fudi/Pages/Pick%20Up/pickUpTimesModel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PickUpPage extends StatefulWidget {
  const PickUpPage({super.key});

  @override
  State<PickUpPage> createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  String activeButton = "Morning";
  PickUpTimesModel? selectedTime;
  bool _isInstantPickUpSelected = false; // Track if Instant Pick Up is selected
  bool _isScheduledPickUpSelected =
      false; // Track if Scheduled Pick Up is selected// State to track if InkWell is selected

  // Function to handle Instant Pick Up selection
  void _instantPickUpSelection() {
    setState(() {
      _isInstantPickUpSelected = true;
      _isScheduledPickUpSelected = false; // Disable Scheduled Pick Up
      activeButton = ''; // Clear active button if Instant Pick Up is selected
      selectedTime = null; // Clear any selected time for scheduled pickup
    });
  }

  // Function to handle Scheduled Pick Up selection
  void _schedulePickUpSelection(String time) {
    setState(() {
      _isInstantPickUpSelected = false; // Disable Instant Pick Up
      _isScheduledPickUpSelected = true;
      activeButton = time; // Set the selected time for scheduled pick up
    });
  }

  List<PickUpTimesModel> displayPickUpsMorningTimes =
      List.from(PickUpMorningTimesList.displayList);
  List<PickUpTimesModel> displayPickUpsAfterNoonTimes =
      List.from(PickUpAfterNoonTimesList.displayList);
  List<PickUpTimesModel> displayPickUpsEveningTimes =
      List.from(PickUpEveningTimesList.getPickUpTimes);

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
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
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Pick Up Time Selection",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("1. Instant Pick Up : ",
                              style: GoogleFonts.poppins()),
                          InkWell(
                            onTap: _isScheduledPickUpSelected
                                ? null // Disable Instant Pickup when Scheduled Pickup is selected
                                : _instantPickUpSelection,
                            child: Container(
                              width: screenWidth * 0.5,
                              height: screenHeight * 0.05,
                              decoration: BoxDecoration(
                                color: _isInstantPickUpSelected
                                    ? Colors.green
                                    : Colors.transparent,
                                border: Border.all(
                                    width: 1,
                                    color: _isInstantPickUpSelected
                                        ? Colors.green
                                        : Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Center(
                                child: Text(
                                  "Pick Up After it's ready",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: _isInstantPickUpSelected
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Scheduled Pick Up section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("2. Schedule your Pick Up : ",
                              style: GoogleFonts.poppins()),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Disable buttons if Instant Pick Up is selected
                            SizedBox(
                              width: screenWidth * 0.3,
                              child: _buildTimeButton(
                                  "Morning",
                                  _isScheduledPickUpSelected &&
                                      !_isInstantPickUpSelected // Disable when Instant is selected
                                  ),
                            ),

                            SizedBox(
                              width: screenWidth * 0.3,
                              child: _buildTimeButton(
                                  "Afternoon",
                                  _isScheduledPickUpSelected &&
                                      !_isInstantPickUpSelected),
                            ),
                            SizedBox(
                              width: screenWidth * 0.3,
                              child: _buildTimeButton(
                                  "Evening",
                                  _isScheduledPickUpSelected &&
                                      !_isInstantPickUpSelected),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Conditionally render the GridView based on the active button
                    if (activeButton == "Morning")
                      _buildTimeGridView(displayPickUpsMorningTimes)
                    else if (activeButton == "Afternoon")
                      _buildTimeGridView(displayPickUpsAfterNoonTimes)
                    else if (activeButton == "Evening")
                      _buildTimeGridView(displayPickUpsEveningTimes),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Restaurant(s) Information",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    // Dynamically generate restaurant cards
                    ...restaurants.map((restaurant) {
                      return Container(
                        margin: EdgeInsets.only(top: 10),
                        height: screenHeight * 0.16,
                        width: screenWidth * 0.859,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Restaurant: ",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        restaurant['name']!,
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Location: ",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          restaurant['location']!,
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.2999,
                                          height: screenHeight * 0.035,
                                          child: InkWell(
                                            onTap: () {
                                              // Handle google map launching for live following.
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(12),
                                                ),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.green),
                                              ),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.0),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Follow Map",
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 11,
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Icon(
                                                          Icons.location_on,
                                                          color: Colors.green,
                                                          size: 15,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, bottom: 5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Phone Number: ",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          restaurant['phone']!,
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.2999,
                                          height: screenHeight * 0.035,
                                          child: InkWell(
                                            onTap: () async {
                                              final Uri phoneUri = Uri(
                                                scheme: 'tel',
                                                path: restaurant['phone'],
                                              );

                                              try {
                                                if (await canLaunchUrl(
                                                    phoneUri)) {
                                                  await launchUrl(
                                                    phoneUri,
                                                    mode: LaunchMode
                                                        .externalApplication,
                                                  );
                                                } else {
                                                  throw 'Could not launch $phoneUri';
                                                }
                                              } catch (e) {
                                                print(
                                                    'Error launching phone call: $e');
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(12),
                                                ),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.green),
                                              ),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.2),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Call them here",
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 11,
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Icon(
                                                          CupertinoIcons.phone,
                                                          color: Colors.green,
                                                          size: 13,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Pick Up Note(Optional)",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          height: screenHeight * 0.08,
                          width: screenWidth * 0.859,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              border: Border.all(width: 1, color: Colors.grey),
                              color: Colors.transparent),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintMaxLines: 2,
                                  border: InputBorder.none,
                                  hintText:
                                      "Example: My order will be picked up by my friend Omary Bongo, he is a con so be careful with him.",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.grey)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: screenWidth * 0.4,
                    height: 50,
                    child: FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: () {
                        //Handle Pick Up confirmation
                      },
                      child: Center(
                        child: Text(
                          'Confirm Pick Up',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, bottom: 35),
          child: Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: screenWidth * 0.2,
              height: screenHeight * 0.095,
              child: InkWell(
                onTap: () async {
                  final Uri phoneUri = Uri(
                    scheme: 'tel',
                    path: '+255624839009', // FUDI Customer Support Center
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
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.green)),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Ask for help",
                            style: GoogleFonts.poppins(
                                fontSize: 10, color: Colors.green),
                          ),
                          Icon(
                            CupertinoIcons.phone,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildTimeButton(String label, bool isScheduledPickUpSelected) {
    bool isActive = activeButton == label;

    return GestureDetector(
      onTap: () {
        if (!_isInstantPickUpSelected) {
          // Only allow if Instant Pickup is not selected
          setState(() {
            activeButton = label;
            _isScheduledPickUpSelected =
                true; // Make sure to set scheduled pickup as selected
          });
        }
      },
      child: Container(
        width: 125,
        height: 50,
        decoration: BoxDecoration(
          color: isActive ? Colors.green : Colors.transparent,
          border: Border.all(
              width: 1, color: isActive ? Colors.transparent : Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: isActive ? Colors.white : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  // Function to build the time GridView
  Widget _buildTimeGridView(List<PickUpTimesModel> pickUps) {
    return SizedBox(
      height: 180,
      width: 340,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: pickUps.length,
        itemBuilder: (context, index) {
          final pickUp = pickUps[index];
          final isSelected = selectedTime == pickUp; // Compare objects directly

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTime = isSelected ? null : pickUp;
              });
            },
            child: Container(
              width: 120,
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
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  pickUp.time!,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: isSelected ? Colors.white : Colors.grey,
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
