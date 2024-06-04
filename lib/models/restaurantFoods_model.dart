// ignore_for_file: file_names

class RestaurantfoodsModel {
  String? foodName;
  int? foodPrice;
  int? preparationTime;
  String? foodImage;
  String? itemSeparator;
  RestaurantfoodsModel(this.foodName, this.foodPrice, this.preparationTime,
      this.foodImage, this.itemSeparator);
}

class RestaurantFoodsList {
  static List<RestaurantfoodsModel> getFoodsList = [
    RestaurantfoodsModel("Chicken", 100, 10, "./assets/chicken.png",
        ".................................."),
    RestaurantfoodsModel("Pizza", 100, 10, "./assets/pizza.png",
        ".................................."),
    RestaurantfoodsModel("Burger", 100, 10, "./assets/bugger.png",
        ".................................."),
    RestaurantfoodsModel("Fries", 100, 10, "./assets/fries.png",
        ".................................."),
    RestaurantfoodsModel("Chicken", 100, 10, "./assets/chicken.png",
        ".................................."),
    RestaurantfoodsModel("Burger", 100, 10, "./assets/bugger.png",
        ".................................."),
  ];

  static List<RestaurantfoodsModel> displayRestaurantFoods =
      List.from(getFoodsList);
}
