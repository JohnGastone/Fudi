// ignore_for_file: file_names

class RestaurantfoodsModel {
  String? foodName;
  int? foodPrice;
  String? preparationTime;
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
      "./assets/hamburger.png",
    ),
    RestaurantfoodsModel(
      "Kuku nusu",
      3500,
      "10-20",
      "./assets/pizza.png",
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      "./assets/hamburger.png",
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      "./assets/hamburger.png",
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      "./assets/hamburger.png",
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      "./assets/hamburger.png",
    ),
    RestaurantfoodsModel(
      "Kuku robo",
      3500,
      "10-20",
      "./assets/hamburger.png",
    ),
  ];

  static List<RestaurantfoodsModel> displayFoods = List.from(getRestaurantFood);
}
