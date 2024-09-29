// ignore_for_file: file_names

class PopularFoodsModel {
  String? foodCoverImage;
  String? foodName;
  String? restaurantName;
  int? foodPrice;
  String? foodDescription; // Added foodDescription property

  PopularFoodsModel(this.foodCoverImage, this.foodName, this.restaurantName,
      this.foodPrice, this.foodDescription);
}

class PopularFoodsList {
  static List<PopularFoodsModel> getPopularFoods = [
    PopularFoodsModel(
        "./assets/hamburger.png",
        "Hamburger",
        "Mautamu Spices",
        10000,
        "A classic American sandwich made with a ground beef patty, usually grilled and placed inside a sliced hamburger bun."),
    PopularFoodsModel(
        "./assets/bugger.png",
        "Latino Bugger",
        "Sossie Foods",
        10000,
        "A juicy burger with a Latin twist, featuring flavors like avocado, jalapenos, and cilantro lime sauce."),
    PopularFoodsModel(
        "./assets/pizza.png",
        "Santorini Pizza",
        "Giggo Dishes",
        15000,
        "A Mediterranean-inspired pizza topped with feta cheese, olives, tomatoes, and fresh herbs."),
    PopularFoodsModel(
        "./assets/pilau.png",
        "Pilau Vuruga",
        "Seafood Lovers",
        8500,
        "A fragrant Tanzanian rice dish cooked with a blend of spices, meat, and vegetables."),
    PopularFoodsModel(
        "./assets/biryani.png",
        "Biryani",
        "Seafood Lovers",
        12000,
        "A flavorful Indian rice dish made with basmati rice, spices, meat, or vegetables."),
    PopularFoodsModel(
        "./assets/mzuzu.png",
        "Wali Mzuzu",
        "Shangazi Chichi",
        15000,
        "A Tanzanian dessert made with coconut milk, rice, and sugar, often served with fruit."),
    PopularFoodsModel(
        "./assets/choma.png",
        "Nyama Choma",
        "Kazimoto Pork",
        20000,
        "Grilled meat, a popular East African dish seasoned with spices and served with sides like ugali or kachumbari."),
    PopularFoodsModel("./assets/chips.png", "Chips Mayai", "Mr Liverpool", 8500,
        "A Tanzanian street food made with french fries (chips) and eggs, often served with ketchup."),
    PopularFoodsModel("./assets/nazi.png", "Wali Nazi", "Shishi Food", 10000,
        "A coconut rice dish popular in coastal regions of East Africa, often made with fish or seafood."),
    PopularFoodsModel(
        "./assets/pilauzanzibar.png",
        "Zanzibar Pilau",
        "Shangazi Cafe",
        10000,
        "A special pilau variant from Zanzibar, known for its unique blend of spices and rich flavor."),
    PopularFoodsModel("./assets/matoke.png", "Matoke", "External Cafe", 10000,
        "A traditional East African dish made from mashed plantains, often cooked with meat, tomatoes, and spices."),
    PopularFoodsModel("./assets/makande.png", "Makande", "Giggo Dishes", 4500,
        "A simple and nutritious maize and bean stew, a staple food in many parts of East Africa."),
    PopularFoodsModel(
        "./assets/makangenyama.png",
        "Makange Nyama",
        "Shangazi Cafe",
        13000,
        "A rich meat stew cooked with a variety of vegetables and spices, served with rice or ugali."),
    PopularFoodsModel(
        "./assets/makangesamaki.png",
        "Makange Samaki",
        "Mr Liverpool",
        15000,
        "A fish stew similar to Makange Nyama, but with fish as the main protein source."),
    PopularFoodsModel("./assets/ugali.png", "Ugali", "Shishi Food", 5500,
        "A stiff porridge made from maize flour, a staple food in many parts of East Africa."),
    PopularFoodsModel("./assets/matoke.png", "Matoke", "Sossie Foods", 10000,
        "A traditional East African dish made from mashed plantains, often cooked with meat, tomatoes, and spices."),
  ];

  static List<PopularFoodsModel> displayPopularFoods =
      List.from(getPopularFoods);
}
