// ignore_for_file: file_names

class RestaurantfoodsModel {
  String? foodName;
  int? foodPrice;
  int? preparationTime;
  String? foodImage;
  String? foodDescription;
  RestaurantfoodsModel(this.foodName, this.foodPrice, this.preparationTime,
      this.foodImage, this.foodDescription);
}

class RestaurantFoodsList {
  static List<RestaurantfoodsModel> getFoodsList = [
    RestaurantfoodsModel("Chicken", 12000, 10, "./assets/chicken.png",
        "Chicken from local farms cooked with spicy additives"),
    RestaurantfoodsModel("Pizza", 15000, 10, "./assets/pizza.png",
        "A Mediterranean-inspired pizza topped with feta cheese, olives, tomatoes, and fresh herbs."),
    RestaurantfoodsModel("Burger", 10000, 10, "./assets/bugger.png",
        "A juicy burger with a Latin twist, featuring flavors like avocado, jalapenos, and cilantro lime sauce."),
    RestaurantfoodsModel(
        "Fries", 12000, 10, "./assets/fries.png", "Locally  made fries"),
    RestaurantfoodsModel("Chicken", 15000, 10, "./assets/chicken.png",
        "Chicken from local farms cooked with spicy additives"),
    RestaurantfoodsModel("Burger", 10000, 10, "./assets/bugger.png",
        "A juicy burger with a Latin twist, featuring flavors like avocado, jalapenos, and cilantro lime sauce."),
  ];

  static List<RestaurantfoodsModel> displayRestaurantFoods =
      List.from(getFoodsList);
}
