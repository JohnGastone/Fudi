import 'package:flutter/material.dart';
import 'package:fudi/models/popularFoods_model.dart';

class FavoritesModel with ChangeNotifier {
  final List<PopularFoodsModel> _favoriteFoods = [];

  List<PopularFoodsModel> get favoriteFoods => _favoriteFoods;

  void addToFavorites(PopularFoodsModel food) {
    _favoriteFoods.add(food);
    notifyListeners();
  }

  void removeFromFavorites(PopularFoodsModel food) {
    _favoriteFoods.remove(food);
    notifyListeners();
  }

  bool isFavorite(PopularFoodsModel food) {
    return _favoriteFoods.contains(food);
  }
}
