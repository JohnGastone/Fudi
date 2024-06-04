// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RestaurantfoodsModel {
  String? foodName;
  int? foodPrice;
  int? preparationTime;
  Image? foodImage;
  RestaurantfoodsModel(
      this.foodName, this.foodPrice, this.preparationTime, this.foodImage);
}

class RestaurantFoodsList {
  static List<RestaurantfoodsModel> getFoodsList = [
    RestaurantfoodsModel("Chicken", 100, 10, Image.asset("assets/pizza.png")),
    RestaurantfoodsModel("Pizza", 100, 10, Image.asset("assets/hamburger.png")),
    RestaurantfoodsModel("Burger", 100, 10, Image.asset("assets/bugger.png")),
    RestaurantfoodsModel("Fries", 100, 10, Image.asset("assets/hamburger.png")),
  ];

  static List<RestaurantfoodsModel> displayRestaurantFoods =
      List.from(getFoodsList);
}
