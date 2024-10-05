import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:fudi/models/popularFoods_model.dart'; // Import your model

class FavoritesModel with ChangeNotifier {
  List<PopularFoodsModel> _favoriteFoods = [];

  List<PopularFoodsModel> get favoriteFoods => _favoriteFoods;

  FavoritesModel() {
    _loadFavorites(); // Load favorite foods when the model is initialized
  }

  // Add food to favorites
  void addToFavorites(PopularFoodsModel food) {
    _favoriteFoods.add(food);
    notifyListeners();
    _saveFavorites(); // Save favorites to SharedPreferences
  }

  // Remove food from favorites
  void removeFromFavorites(PopularFoodsModel food) {
    _favoriteFoods.remove(food);
    notifyListeners();
    _saveFavorites(); // Save updated favorites to SharedPreferences
  }

  // Check if a food is a favorite
  bool isFavorite(PopularFoodsModel food) {
    return _favoriteFoods.contains(food);
  }

  // Save favorite foods to SharedPreferences
  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favoriteList = _favoriteFoods
        .map((food) => jsonEncode(food.toJson())) // Convert food to JSON string
        .toList();
    prefs.setStringList('favorites', favoriteList);
  }

  // Load favorite foods from SharedPreferences
  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favoriteList = prefs.getStringList('favorites') ?? [];

    _favoriteFoods = favoriteList
        .map((item) => PopularFoodsModel.fromJson(jsonDecode(item)))
        .toList();

    notifyListeners();
  }
}
