class RestaurantModel {
  String? restaurantName;
  double? restaurantRating;
  String? coverImage;
  String? restaurantLocation;
  int? restaurantRanking;

  RestaurantModel(this.restaurantName, this.restaurantRating, this.coverImage,
      this.restaurantLocation, this.restaurantRanking);
}

class RestaurantList {
  static List<RestaurantModel> getRestaurants = [
    RestaurantModel(
        "Seafood Lovers", 5.0, "./assets/Seafood.png", "Kinondoni B", 1),
    RestaurantModel(
        "Shishi Food   ", 5.0, "./assets/shishi.png", "Kijitonyama", 2),
    RestaurantModel(
        "Shangazi Cafe ", 4.5, "./assets/pilau.png", "Dumila Chini", 3),
    RestaurantModel(
        "External Cafe", 5.0, "./assets/hamburger.png", "External", 4),
    RestaurantModel(
        "Mautamu Spices   ", 5.0, "./assets/biryani.png", "Mbezi Mwisho", 5),
    RestaurantModel("Kazimoto Porks ", 4.5, "./assets/pilau.png", "Segerea", 6),
    RestaurantModel(
        "Mr Liverpool", 5.0, "./assets/hamburger.png", "Mpanda Mjini", 7),
    RestaurantModel(
        "Sossie Foods   ", 5.0, "./assets/biryani.png", "Kinyerezi", 8),
    RestaurantModel(
        "Shangazi Chichi ", 4.5, "./assets/pilau.png", "Msasani", 9),
    RestaurantModel(
        "Shangazi Chichi ", 4.5, "./assets/pilau.png", "Msasani", 10)
  ];
  static List<RestaurantModel> displayList = List.from(getRestaurants);
}
