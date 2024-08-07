class PopularFoodsModel {
  String? foodCoverImage;
  String? foodName;
  String? foodTag;
  int? foodPrice;
  String? foodDescription; // Added foodDescription property

  PopularFoodsModel(this.foodCoverImage, this.foodName, this.foodTag,
      this.foodPrice, this.foodDescription);
}

class PopularFoodsList {
  static List<PopularFoodsModel> getPopularFoods = [
    PopularFoodsModel("./assets/hamburger.png", "Hamburger", "Sweet", 15,
        "A classic American sandwich made with a ground beef patty, usually grilled and placed inside a sliced hamburger bun."),
    PopularFoodsModel("./assets/bugger.png", "Latino Bugger", "Succulent", 9,
        "A juicy burger with a Latin twist, featuring flavors like avocado, jalapenos, and cilantro lime sauce."),
    PopularFoodsModel("./assets/pizza.png", "Santorini Pizza", "Flavorful", 11,
        "A Mediterranean-inspired pizza topped with feta cheese, olives, tomatoes, and fresh herbs."),
    PopularFoodsModel("./assets/pilau.png", "Pilau Vuruga", "Aromatic", 10,
        "A fragrant Tanzanian rice dish cooked with a blend of spices, meat, and vegetables."),
    PopularFoodsModel("./assets/biryani.png", "Biryani", "Fluffy", 7,
        "A flavorful Indian rice dish made with basmati rice, spices, meat, or vegetables."),
    PopularFoodsModel("./assets/mzuzu.png", "Wali Mzuzu", "Sweet", 14,
        "A Tanzanian dessert made with coconut milk, rice, and sugar, often served with fruit."),
    PopularFoodsModel("./assets/margeritha.png", "Nyama Choma", "Spicy", 15,
        "Grilled meat, a popular East African dish seasoned with spices and served with sides like ugali or kachumbari."),
    PopularFoodsModel("./assets/chips.png", "Chips Mayai", "Sweet", 5,
        "A Tanzanian street food made with french fries (chips) and eggs, often served with ketchup."),
    PopularFoodsModel("./assets/nazi.png", "Wali Nazi", "Creamy", 12,
        "A coconut rice dish popular in coastal regions of East Africa, often made with fish or seafood."),
    PopularFoodsModel(
        "./assets/pilauzanzibar.png",
        "Zanzibar Pilau",
        "Aromatic",
        15,
        "A special pilau variant from Zanzibar, known for its unique blend of spices and rich flavor."),
    PopularFoodsModel("./assets/matoke.png", "Matoke", "Savory", 10,
        "A traditional East African dish made from mashed plantains, often cooked with meat, tomatoes, and spices."),
    PopularFoodsModel("./assets/makande.png", "Makande", "Nutritious", 4,
        "A simple and nutritious maize and bean stew, a staple food in many parts of East Africa."),
    PopularFoodsModel(
        "./assets/makangenyama.png",
        "Makange Nyama",
        "Hearty",
        13,
        "A rich meat stew cooked with a variety of vegetables and spices, served with rice or ugali."),
    PopularFoodsModel(
        "./assets/makangesamaki.png",
        "Makange Samaki",
        "Flavorful",
        15,
        "A fish stew similar to Makange Nyama, but with fish as the main protein source."),
    PopularFoodsModel("./assets/ugali.png", "Ugali", "Satisfying", 11,
        "A stiff porridge made from maize flour, a staple food in many parts of East Africa."),
    PopularFoodsModel("./assets/matoke.png", "Matoke", "Savory", 10,
        "A traditional East African dish made from mashed plantains, often cooked with meat, tomatoes, and spices."),
  ];

  static List<PopularFoodsModel> displayPopularFoods =
      List.from(getPopularFoods);
}
