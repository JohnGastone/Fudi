// ignore_for_file: file_names

import 'package:fudi/models/restaurants_model.dart';

class RestaurantfoodsModel {
  String? foodName;
  int? foodPrice;
  String? preparationTime;
  String? foodImage;

  RestaurantfoodsModel(
      this.foodName, this.foodPrice, this.foodImage, this.preparationTime);
}

class RestaurantFoodlist {
  static List<RestaurantModel> getRestaurantFood = [
    RestaurantModel(
      "Kuku robo",
      3500,
      "10-20",
      "./assets/hamburger.png",
    ),
  ];
}
