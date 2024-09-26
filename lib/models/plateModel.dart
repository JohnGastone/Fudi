import 'package:flutter/material.dart';

class CartModel with ChangeNotifier {
  final List<Map<String, dynamic>> _cartItems = [];

  // Getter for cart items
  List<Map<String, dynamic>> get cartItems => _cartItems;

  // Add food to cart
  void addToCart(String image, int price, String size, int quantity) {
    _cartItems.add({
      "image": image,
      "price": price,
      "size": size,
      "quantity": quantity,
    });
    notifyListeners();
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
