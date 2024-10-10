// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Restaurantfoodprovider with ChangeNotifier {
  final List<Map<String, dynamic>> _restaurantFoodDetails = [];

  // Getter for _restaurantFoodDetails
  List<Map<String, dynamic>> get RestaurantFoodDetails =>
      _restaurantFoodDetails;

  // Add food details from restaurant to the plate
  void addRestaurantFoodToPlate(
      String foodImage, String foodName, String restaurantName, double price) {
    _restaurantFoodDetails.add({
      "image": foodImage,
      "name": foodName,
      "restaurantName": restaurantName,
      "price": price
    });

    notifyListeners();
  }
}
