import 'package:flutter/material.dart';

class CartModel with ChangeNotifier {
  final List<Map<String, dynamic>> _cartItems = [];

  // Getter for cart items
  List<Map<String, dynamic>> get cartItems => _cartItems;

  // Add food to cart
  void addToCart(String image, String name, String restaurant, int price,
      String size, int quantity) {
    _cartItems.add({
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
    return cartItems.map((item) => item['name'].toString()).toList();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (var item in cartItems) {
      total += item['price'] * item['quantity'];
    }
    return total;
  }

  // Remove food from cart
  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Clear cart (optional)
  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
