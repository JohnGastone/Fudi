class PopularFoodsModel {
  String? foodCoverImage;
  String? foodName;
  String? foodTag;
  int? foodPrice;
  PopularFoodsModel(
      this.foodCoverImage, this.foodName, this.foodTag, this.foodPrice);
}

class PopularFoodsList {
  static List<PopularFoodsModel> getPopularFoods = [
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/bugger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/pizza.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/pilau.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/biryani.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/mzuzu.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/margeritha.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/hamburger.png", "Pizza", "Pizza", 15),
  ];
  static List<PopularFoodsModel> displayPopularFoods =
      List.from(getPopularFoods);
}
