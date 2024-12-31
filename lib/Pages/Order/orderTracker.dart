import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _orders = [];

  List<Map<String, dynamic>> get orders => _orders;

  // Load orders on initialization
  OrderProvider() {
    _loadOrdersFromPreferences();
  }

  // A method to remove an order by index
  void removeOrder(int index) {
    _orders.removeAt(index);
    notifyListeners();
    _saveOrdersToPreferences();
  }

  // A method to remove an order by index
  void addOrder(List<String> restaurantNames, List<String> foodNames,
      double totalPrice) async {
    final newOrder = {
      'restaurantNames': restaurantNames,
      'foodNames': foodNames,
      'totalPrice': totalPrice,
      'date': DateTime.now().toString(),
    };
    _orders.add(newOrder);
    notifyListeners();
    await _saveOrdersToPreferences();
  }

  Future<void> _saveOrdersToPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final orderData = _orders.map((order) {
      return {
        'restaurantNames': order['restaurantNames'],
        'foodNames': order['foodNames'],
        'totalPrice': order['totalPrice'].toString(),
        'date': order['date'].toString(),
      };
    }).toList();

    await prefs.setString('orders', jsonEncode(orderData));
  }

  // A method to load orders from device's local storage
  Future<void> _loadOrdersFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final orderData = prefs.getString('orders');
    if (orderData != null) {
      final List<dynamic> decodedData = jsonDecode(orderData);
      _orders = decodedData.map((order) {
        return {
          'restaurantNames': List<String>.from(order['restaurantNames']),
          'foodNames': List<String>.from(order['foodNames']),
          'totalPrice': double.parse(order['totalPrice']),
          'date': DateTime.parse(order['date']),
        };
      }).toList();
      notifyListeners();
    }
  }

  void clearOrders() async {
    _orders.clear();
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('orders'); // Clear from storage
  }
}
