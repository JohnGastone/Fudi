// ignore_for_file: file_names

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
    PopularFoodsModel("./assets/bugger.png", "Latino Bugger", "Succulent", 9),
    PopularFoodsModel("./assets/pizza.png", "Santorini Pizza", "Flavorful", 11),
    PopularFoodsModel("./assets/pilau.png", "Pilau Vuruga", "Aromatic", 10),
    PopularFoodsModel("./assets/biryani.png", "Pizza", "Fluffy", 7),
    PopularFoodsModel("./assets/mzuzu.png", "Wali Mzuzu", "Sweet", 14),
    PopularFoodsModel("./assets/margeritha.png", "Nyama Choma", "Spicy", 15),
    PopularFoodsModel("./assets/chips.png", "Chips Mayai", "Sweet", 5),
    PopularFoodsModel("./assets/nazi.png", "Wali Nazi", "Creamy", 12),
    PopularFoodsModel(
        "./assets/pilauzanzibar.png", "Zanzibar Pilau", "Aromatic", 15),
    PopularFoodsModel("./assets/matoke.png", "Matoke", "Savory", 10),
    PopularFoodsModel("./assets/makande.png", "Makande", "Nutritious", 4),
    PopularFoodsModel(
        "./assets/makangenyama.png", "Makange Nyama", "Hearty", 13),
    PopularFoodsModel(
        "./assets/makangesamaki.png", "Makange Samaki", "Flavorful", 15),
    PopularFoodsModel("./assets/ugali.png", "Ugali", "Satisfying", 11),
  ];
  static List<PopularFoodsModel> displayPopularFoods =
      List.from(getPopularFoods);
}
