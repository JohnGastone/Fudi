import 'package:flutter/material.dart';

class PlateModel with ChangeNotifier {
  final List<Map<String, dynamic>> _plateItems = [];

  // Getter for plate items
  List<Map<String, dynamic>> get plateItems => _plateItems;

  // Add food to plate
  void addToPlate(String image, String name, String restaurant, int price,
      String size, int quantity) {
    _plateItems.add({
      "image": image,
      "name": name,
      "restaurant": restaurant,
      "price": price,
      "size": size,
      "quantity": quantity,
    });
    notifyListeners();
  }

  List<String> getFoodNames() {
    return plateItems.map((item) => item['name'].toString()).toList();
  }

  List<String> getRestaurantNames() {
    return plateItems.map((item) => item['restaurant'].toString()).toList();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (var item in plateItems) {
      total += item['price'] * item['quantity'];
    }
    return total;
  }

  // Remove food from plate
  void removeFromPlate(int index) {
    _plateItems.removeAt(index);
    notifyListeners();
  }

  // Clear plate (optional)
  void clearPlate() {
    _plateItems.clear();
    notifyListeners();
  }
}
