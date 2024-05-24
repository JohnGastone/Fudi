// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FudiDescription extends StatelessWidget {
  const FudiDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        title: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                CupertinoIcons.heart,
                color: Colors.white,
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RichText(
                text: TextSpan(
                    text: "Margareta Pizza",
                    style: GoogleFonts.spaceMono(fontSize: 32)))
          ],
        ),
      ),
    );
  }
}
