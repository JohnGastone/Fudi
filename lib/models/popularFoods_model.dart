// ignore_for_file: file_names

class PopularFoodsModel {
  String? foodCoverImage;
  String? foodName;
  String? restaurantName;
  String? restaurantLocation;
  int? restaurantPhoneNumber;
  int? foodPrice;
  String? foodDescription;

  // Use named parameters in the constructor
  PopularFoodsModel({
    this.foodCoverImage,
    this.foodName,
    this.restaurantName,
    this.restaurantLocation,
    this.restaurantPhoneNumber,
    this.foodPrice,
    this.foodDescription,
  });

  // Convert PopularFoodsModel object to a map (JSON format)
  Map<String, dynamic> toJson() {
    return {
      'foodCoverImage': foodCoverImage,
      'foodName': foodName,
      'restaurantName': restaurantName,
      'restaurantLocation': restaurantLocation,
      'restaurantPhoneNumber': restaurantPhoneNumber,
      'foodPrice': foodPrice,
      'foodDescription': foodDescription,
    };
  }

  // Create PopularFoodsModel from a map (JSON)
  factory PopularFoodsModel.fromJson(Map<String, dynamic> json) {
    return PopularFoodsModel(
      foodCoverImage: json['foodCoverImage'],
      foodName: json['foodName'],
      restaurantName: json['restaurantName'],
      restaurantLocation: json['restaurantLocation'],
      restaurantPhoneNumber: json['restaurantPhoneNumber'],
      foodPrice: json['foodPrice'],
      foodDescription: json['foodDescription'],
    );
  }
}

class PopularFoodsList {
  static List<PopularFoodsModel> getPopularFoods = [
    PopularFoodsModel(
        foodCoverImage: "./assets/hamburger.png",
        foodName: "Hamburger",
        restaurantName: "Mautamu Spices",
        restaurantLocation: "Mbezi Mwisho",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 10000,
        foodDescription:
            "A classic American sandwich made with a ground beef patty, usually grilled and placed inside a sliced hamburger bun."),
    PopularFoodsModel(
        foodCoverImage: "./assets/bugger.png",
        foodName: "Latino Bugger",
        restaurantName: "Sossie Foods",
        restaurantLocation: "Kinyerezi",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 10000,
        foodDescription:
            "A juicy burger with a Latin twist, featuring flavors like avocado, jalapenos, and cilantro lime sauce."),
    PopularFoodsModel(
        foodCoverImage: "./assets/pizza.png",
        foodName: "Santorini Pizza",
        restaurantName: "Giggo Dishes",
        restaurantLocation: "Msasani",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 15000,
        foodDescription:
            "A Mediterranean-inspired pizza topped with feta cheese, olives, tomatoes, and fresh herbs."),
    PopularFoodsModel(
        foodCoverImage: "./assets/pilau.png",
        foodName: "Pilau Vuruga",
        restaurantName: "Seafood Lovers",
        restaurantLocation: "Kinondoni B",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 12000,
        foodDescription:
            "A fragrant Tanzanian rice dish cooked with a blend of spices, meat, and vegetables."),
    PopularFoodsModel(
        foodCoverImage: "./assets/biryani.png",
        foodName: "Biryani",
        restaurantName: "Seafood Lovers",
        restaurantLocation: "Kinondoni B",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 12000,
        foodDescription:
            "A flavorful Indian rice dish made with basmati rice, spices, meat, or vegetables."),
    PopularFoodsModel(
        foodCoverImage: "./assets/mzuzu.png",
        foodName: "Wali Mzuzu",
        restaurantName: "Shangazi Chichi",
        restaurantLocation: "Msasani",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 15000,
        foodDescription:
            "A Tanzanian dessert made with coconut milk, rice, and sugar, often served with fruit."),
    PopularFoodsModel(
        foodCoverImage: "./assets/choma.png",
        foodName: "Nyama Choma",
        restaurantName: "Kazimoto Pork",
        restaurantLocation: "Segerea",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 20000,
        foodDescription:
            "Grilled meat, a popular East African dish seasoned with spices and served with sides like ugali or kachumbari."),
    PopularFoodsModel(
        foodCoverImage: "./assets/chips.png",
        foodName: "Chips Mayai",
        restaurantName: "Mr Liverpool",
        restaurantLocation: "Mpanda Mjini",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 8500,
        foodDescription:
            "A Tanzanian street food made with french fries (chips) and eggs, often served with ketchup."),
    PopularFoodsModel(
        foodCoverImage: "./assets/nazi.png",
        foodName: "Wali Nazi",
        restaurantName: "Shishi Food",
        restaurantLocation: "Kijitonyama",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 10000,
        foodDescription:
            "A coconut rice dish popular in coastal regions of East Africa, often made with fish or seafood."),
    PopularFoodsModel(
        foodCoverImage: "./assets/pilauzanzibar.png",
        foodName: "Pilau Zanzibar",
        restaurantName: "Shangazi Cafe",
        restaurantLocation: "Dumila Chini",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 10000,
        foodDescription:
            "A special pilau variant from Zanzibar, known for its unique blend of spices and rich flavor."),
    PopularFoodsModel(
        foodCoverImage: "./assets/matoke.png",
        foodName: "Matoke",
        restaurantName: "External Cafe",
        restaurantLocation: "External",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 10000,
        foodDescription:
            "A traditional East African dish made from mashed plantains, often cooked with meat, tomatoes, and spices."),
    PopularFoodsModel(
        foodCoverImage: "./assets/makande.png",
        foodName: "Makande",
        restaurantName: "Giggo Dishes",
        restaurantLocation: "Msasani",
        restaurantPhoneNumber: 255786849280,
        foodPrice: 15000,
        foodDescription:
            "A simple and nutritious maize and bean stew, a staple food in many parts of East Africa."),
    PopularFoodsModel(
        foodCoverImage: "./assets/makangenyama.png",
        foodName: "Makange Nyama",
        restaurantName: "Shangazi Cafe",
        restaurantLocation: "Dumila Chini",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 15000,
        foodDescription:
            "A rich meat stew cooked with a variety of vegetables and spices, served with rice or ugali."),
    PopularFoodsModel(
        foodCoverImage: "./assets/makangesamaki.png",
        foodName: "Makange Samaki",
        restaurantName: "Mr Liverpool",
        restaurantLocation: "Mpanda Mjini",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 15000,
        foodDescription:
            "A fish stew similar to Makange Nyama, but with fish as the main protein source."),
    PopularFoodsModel(
        foodCoverImage: "./assets/ugali.png",
        foodName: "Ugali",
        restaurantName: "Shishi Food",
        restaurantLocation: "KIjitonyama",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 5500,
        foodDescription:
            "A stiff porridge made from maize flour, a staple food in many parts of East Africa."),
    PopularFoodsModel(
        foodCoverImage: "./assets/matoke.png",
        foodName: "Matoke",
        restaurantName: "Sossie Foods",
        restaurantLocation: "Kinyerezi",
        restaurantPhoneNumber: 255785432198,
        foodPrice: 10000,
        foodDescription:
            "A traditional East African dish made from mashed plantains, often cooked with meat, tomatoes, and spices."),
  ];

  static List<PopularFoodsModel> displayPopularFoods =
      List.from(getPopularFoods);
}
