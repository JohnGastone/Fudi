class RestaurantModel {
  String? restaurantName;
  double? restaurantRating;
  String? coverImage;
  String? restaurantLocation;
  int? restaurantRanking;
  String? restaurantType;

  RestaurantModel(this.restaurantName, this.restaurantRating, this.coverImage,
      this.restaurantLocation, this.restaurantRanking, this.restaurantType);
}

class RestaurantList {
  static List<RestaurantModel> getRestaurants = [
    RestaurantModel("Seafood Lovers", 5.0, "./assets/Seafood.png",
        "Kinondoni B", 1, "Hybrid"),
    RestaurantModel("Shishi Food   ", 5.0, "./assets/shishi.png", "Kijitonyama",
        2, "Hybrid"),
    RestaurantModel("Shangazi Cafe ", 4.5, "./assets/Seafood.png",
        "Dumila Chini", 3, "Native"),
    RestaurantModel(
        "External Cafe", 5.0, "./assets/shishi.png", "External", 4, "Native"),
    RestaurantModel("Mautamu Spices   ", 5.0, "./assets/Seafood.png",
        "Mbezi Mwisho", 5, "Hybrid"),
    RestaurantModel(
        "Kazimoto Porks ", 4.5, "./assets/shishi.png", "Segerea", 6, "Native"),
    RestaurantModel("Mr Liverpool", 5.0, "./assets/Seafood.png", "Mpanda Mjini",
        7, "Native"),
    RestaurantModel("Sossie Foods   ", 5.0, "./assets/shishi.png", "Kinyerezi",
        8, "Hybrid"),
    RestaurantModel("Shangazi Chichi ", 4.5, "./assets/Seafood.png", "Msasani",
        9, "Native"),
    RestaurantModel(
        "Giggo Dishes ", 4.5, "./assets/shishi.png", "Msasani", 10, "Foreign"),
  ];
  static List<RestaurantModel> displayList = List.from(getRestaurants);
}
