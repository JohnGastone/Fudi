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
    RestaurantfoodsModel("Chicken", 12000, 10, "./assets/chicken.png",
        ".................................."),
    RestaurantfoodsModel("Pizza", 15000, 10, "./assets/pizza.png",
        ".................................."),
    RestaurantfoodsModel("Burger", 10000, 10, "./assets/bugger.png",
        ".................................."),
    RestaurantfoodsModel("Fries", 12000, 10, "./assets/fries.png",
        ".................................."),
    RestaurantfoodsModel("Chicken", 15000, 10, "./assets/chicken.png",
        ".................................."),
    RestaurantfoodsModel("Burger", 10000, 10, "./assets/bugger.png",
        ".................................."),
  ];

  static List<RestaurantfoodsModel> displayRestaurantFoods =
      List.from(getFoodsList);
}
