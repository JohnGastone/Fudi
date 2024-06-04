// ignore_for_file: file_names

class RestaurantfoodsModel {
  String? foodName;
  int? foodPrice;
  int? preparationTime;
  String? foodImage;

  RestaurantfoodsModel(
      this.foodName, this.foodPrice, this.foodImage, this.preparationTime);
}

class RestaurantFoodlist {
  static List<RestaurantfoodsModel> getRestaurantFood = [
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      20,
    ),
    RestaurantfoodsModel(
      "Kuku nusu",
      3500,
      "10-20",
      25,
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      20,
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      15,
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      15,
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      15,
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      15,
    ),
  ];

  static List<RestaurantfoodsModel> displayFoods = List.from(getRestaurantFood);
}
