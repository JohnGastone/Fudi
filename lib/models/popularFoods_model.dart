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
  ];
}
