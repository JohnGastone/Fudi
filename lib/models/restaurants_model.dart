class RestaurantModel {
  String? restaurantName;
  double? restaurantRating;
  String? coverImage;
  String? restaurantLocation;
  int? restaurantRanking;
  String? restaurantType;
  String? restaurantDescription;

  RestaurantModel(
      this.restaurantName,
      this.restaurantRating,
      this.coverImage,
      this.restaurantLocation,
      this.restaurantRanking,
      this.restaurantType,
      this.restaurantDescription);
}

class RestaurantList {
  static List<RestaurantModel> getRestaurants = [
    RestaurantModel(
        "Seafood Lovers",
        5.0,
        "./assets/Seafood.png",
        "Kinondoni B",
        1,
        "Hybrid",
        "Specializes in a variety of fresh seafood dishes, with a focus on local flavors and sustainable sourcing."),
    RestaurantModel(
        "Shishi Food",
        5.0,
        "./assets/shishi.png",
        "Kijitonyama",
        2,
        "Hybrid",
        "Known for its creative fusion cuisine, blending international flavors with Tanzanian ingredients."),
    RestaurantModel(
        "Shangazi Cafe",
        4.5,
        "./assets/Seafood.png",
        "Dumila Chini",
        3,
        "Native",
        "A cozy cafe offering traditional Tanzanian dishes and drinks in a relaxed atmosphere."),
    RestaurantModel(
        "External Cafe",
        5.0,
        "./assets/shishi.png",
        "External",
        4,
        "Native",
        "A popular outdoor cafe with a vibrant ambiance, serving both local and international cuisine."),
    RestaurantModel(
        "Mautamu Spices",
        5.0,
        "./assets/Seafood.png",
        "Mbezi Mwisho",
        5,
        "Hybrid",
        "A diverse menu featuring a wide range of Tanzanian dishes, with a special emphasis on flavorful spices and herbs."),
    RestaurantModel(
        "Kazimoto Porks",
        4.5,
        "./assets/shishi.png",
        "Segerea",
        6,
        "Native",
        "Renowned for its succulent pork dishes, prepared in various traditional Tanzanian styles."),
    RestaurantModel(
        "Mr Liverpool",
        5.0,
        "./assets/Seafood.png",
        "Mpanda Mjini",
        7,
        "Native",
        "A family-friendly restaurant serving classic Tanzanian comfort food in generous portions."),
    RestaurantModel(
        "Sossie Foods",
        5.0,
        "./assets/shishi.png",
        "Kinyerezi",
        8,
        "Hybrid",
        "Combines traditional Tanzanian dishes with modern culinary techniques for a unique dining experience."),
    RestaurantModel(
        "Shangazi Chichi",
        4.5,
        "./assets/Seafood.png",
        "Msasani",
        9,
        "Native",
        "Offers a delightful selection of Tanzanian breakfast and brunch options, using locally sourced ingredients."),
    RestaurantModel(
        "Giggo Dishes",
        4.5,
        "./assets/shishi.png",
        "Msasani",
        10,
        "Foreign",
        "Brings the flavors of international cuisine to Dar es Salaam, with a diverse menu and sophisticated ambiance."),
  ];

  static List<RestaurantModel> displayList = List.from(getRestaurants);
}
