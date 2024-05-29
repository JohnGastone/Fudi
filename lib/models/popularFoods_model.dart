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
    PopularFoodsModel("./assets/hamburger.png", "Harmbugger", "Sweet", 15),
    PopularFoodsModel("./assets/bugger.png", "Latino Bugger", "Succulent", 15),
    PopularFoodsModel("./assets/pizza.png", "Santorini Pizza", "Flavorful", 15),
    PopularFoodsModel("./assets/pilau.png", "Pilau Vuruga", "Aromatic", 15),
    PopularFoodsModel("./assets/biryani.png", "Pizza", "Fluffy", 15),
    PopularFoodsModel("./assets/mzuzu.png", "Wali Mzuzu", "Sweet", 15),
    PopularFoodsModel("./assets/margeritha.png", "Nyama Choma", "Spicy", 15),
    PopularFoodsModel("./assets/chips.png", "Chips Mayai", "Sweet", 15),
    PopularFoodsModel("./assets/nazi.png", "Wali Nazi", "Creamy", 15),
    PopularFoodsModel(
        "./assets/pilauzanzibar.png", "Zanzibar Pilau", "Aromatic", 15),
    PopularFoodsModel("./assets/hamburger.png", "Matoke", "Savory", 15),
    PopularFoodsModel("./assets/hamburger.png", "Makande", "Nutritious", 15),
    PopularFoodsModel("./assets/hamburger.png", "Makange Nyama", "Hearty", 15),
    PopularFoodsModel(
        "./assets/hamburger.png", "Makange Samaki", "Flavorful", 15),
    PopularFoodsModel("./assets/hamburger.png", "Ugali", "Satisfying", 15),
  ];
  static List<PopularFoodsModel> displayPopularFoods =
      List.from(getPopularFoods);
}
