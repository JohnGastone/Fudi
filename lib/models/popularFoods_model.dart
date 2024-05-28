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
    PopularFoodsModel("./assets/hamburger.png", "Harmbugger", "Pizza", 15),
    PopularFoodsModel("./assets/bugger.png", "Latino Bugger", "Pizza", 15),
    PopularFoodsModel("./assets/pizza.png", "Santorini Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/pilau.png", "Pilau Vuruga", "Pizza", 15),
    PopularFoodsModel("./assets/biryani.png", "Pizza", "Pizza", 15),
    PopularFoodsModel("./assets/mzuzu.png", "Wali Mzuzu", "Pizza", 15),
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
