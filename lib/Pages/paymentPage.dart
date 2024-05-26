// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:google_fonts/google_fonts.dart";

class paymentPage extends StatefulWidget {
  const paymentPage({super.key});

  @override
  State<paymentPage> createState() => _paymentPageState();
}

class _paymentPageState extends State<paymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 206, 206),
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
                    style: GoogleFonts.spaceMono(
                        fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Choose a payment method",
              style: GoogleFonts.spaceMono(fontSize: 20),
            ),
          ],
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Image.asset(
                        "./assets/smartphone.png",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Mobile Network Operators",
                        style: GoogleFonts.spaceMono(fontSize: 17),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        child: Image.asset(
                          "./assets/Halopesa.png",
                          height: 50,
                          width: 50,
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Pay via Halopesa",
                                    style: GoogleFonts.spaceMono(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp("[0-9]")),
                                          LengthLimitingTextInputFormatter(10)
                                        ],
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                "Enter your Halotel number"),
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: FloatingActionButton(
                                            backgroundColor: Colors.green,
                                            child: Text("Pay",
                                                style: GoogleFonts.spaceMono(
                                                    fontSize: 16)),
                                            onPressed: () {
                                              // Integration to google maps
                                            }),
                                      )
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: GoogleFonts.spaceMono(
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                        )),
                                  ],
                                );
                              });
                        }),
                    InkWell(
                        child: Image.asset(
                          "./assets/Mpesa.png",
                          height: 50,
                          width: 50,
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Pay via M-pesa",
                                    style: GoogleFonts.spaceMono(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                "Enter your Vodacom number"),
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: FloatingActionButton(
                                            backgroundColor: Colors.green,
                                            child: Text("Pay",
                                                style: GoogleFonts.spaceMono(
                                                    fontSize: 16)),
                                            onPressed: () {
                                              // Integration to google maps
                                            }),
                                      )
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: GoogleFonts.spaceMono(
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                        )),
                                  ],
                                );
                              });
                        }),
                    InkWell(
                        child: Image.asset(
                          "./assets/Tigopesa.png",
                          height: 50,
                          width: 50,
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Pay via Tigopesa",
                                    style: GoogleFonts.spaceMono(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "Enter your Tigo number"),
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: FloatingActionButton(
                                            backgroundColor: Colors.green,
                                            child: Text("Pay",
                                                style: GoogleFonts.spaceMono(
                                                    fontSize: 16)),
                                            onPressed: () {
                                              // Integration to google maps
                                            }),
                                      )
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: GoogleFonts.spaceMono(
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                        )),
                                  ],
                                );
                              });
                        }),
                    InkWell(
                        child: Image.asset(
                          "./assets/Airtelmoney.png",
                          height: 50,
                          width: 50,
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Pay via Airtel money",
                                    style: GoogleFonts.spaceMono(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                "Enter your Airtel number"),
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: FloatingActionButton(
                                            backgroundColor: Colors.green,
                                            child: Text("Pay",
                                                style: GoogleFonts.spaceMono(
                                                    fontSize: 16)),
                                            onPressed: () {
                                              // Integration to google maps
                                            }),
                                      )
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: GoogleFonts.spaceMono(
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                        )),
                                  ],
                                );
                              });
                        })
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Image.asset(
                        "./assets/card.png",
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Pay via VISA or MASTERCARD ",
                          style: GoogleFonts.spaceMono(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          child: Image.asset(
                            "./assets/crdb.png",
                            height: 65,
                            width: 65,
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Pay via CRDB Bank",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(
                                                13), // Limits input to 13 characters
                                            FilteringTextInputFormatter
                                                .digitsOnly, // Allows only digits
                                          ],
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Account Number"),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.datetime,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                            LengthLimitingTextInputFormatter(10)
                                          ],
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText:
                                                  "Account expiration date"),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                            LengthLimitingTextInputFormatter(3)
                                          ],
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Account's CVV "),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: FloatingActionButton(
                                              backgroundColor: Colors.green,
                                              child: Text("Pay",
                                                  style: GoogleFonts.spaceMono(
                                                      fontSize: 16)),
                                              onPressed: () {
                                                // Integration to CRDB payment API
                                              }),
                                        )
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: GoogleFonts.spaceMono(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ],
                                  );
                                });
                          }),
                      InkWell(
                          child: Image.asset(
                            "./assets/nmb.png",
                            height: 65,
                            width: 65,
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Pay via NMB Bank",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Account Number"),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.datetime,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText:
                                                  "Account expiration date"),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Account's CVV "),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: FloatingActionButton(
                                              backgroundColor: Colors.green,
                                              child: Text("Pay",
                                                  style: GoogleFonts.spaceMono(
                                                      fontSize: 16)),
                                              onPressed: () {
                                                // Integration to NMB payment API
                                              }),
                                        )
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: GoogleFonts.spaceMono(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ],
                                  );
                                });
                          }),
                      InkWell(
                          child: Image.asset(
                            "./assets/nbc.png",
                            height: 65,
                            width: 65,
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Pay via NBC Bank",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Account Number"),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.datetime,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText:
                                                  "Account expiration date"),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Account CVV "),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: FloatingActionButton(
                                              backgroundColor: Colors.green,
                                              child: Text("Pay",
                                                  style: GoogleFonts.spaceMono(
                                                      fontSize: 16)),
                                              onPressed: () {
                                                // Integration to NBC payment API
                                              }),
                                        )
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: GoogleFonts.spaceMono(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ],
                                  );
                                });
                          }),
                      InkWell(
                          child: Image.asset(
                            "./assets/sc.png",
                            height: 65,
                            width: 65,
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Pay via Standard Chartered Bank",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Account Number"),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.datetime,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText:
                                                  "Account expiration date"),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Account CVV "),
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: FloatingActionButton(
                                              backgroundColor: Colors.green,
                                              child: Text("Pay",
                                                  style: GoogleFonts.spaceMono(
                                                      fontSize: 16)),
                                              onPressed: () {
                                                // Integration to google maps
                                              }),
                                        )
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: GoogleFonts.spaceMono(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ],
                                  );
                                });
                          })
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        child: Image.asset(
                          "./assets/equity.png",
                          height: 65,
                          width: 65,
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Pay via Equity Bank",
                                    style: GoogleFonts.spaceMono(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "Account Number"),
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.datetime,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                "Account expiration date"),
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "Account's CVV "),
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: FloatingActionButton(
                                            backgroundColor: Colors.green,
                                            child: Text("Pay",
                                                style: GoogleFonts.spaceMono(
                                                    fontSize: 16)),
                                            onPressed: () {
                                              // Integration to CRDB payment API
                                            }),
                                      )
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: GoogleFonts.spaceMono(
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                        )),
                                  ],
                                );
                              });
                        }),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
