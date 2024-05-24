// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FudiDescription extends StatelessWidget {
  const FudiDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 206, 206),
        title: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.arrow_back_ios_new),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
