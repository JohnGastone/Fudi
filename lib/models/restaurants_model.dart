class RestaurantModel {
  String? restaurantName;
  double? restaurantRating;
  String? coverImage;
  String? restaurantLocation;

  RestaurantModel(this.restaurantName, this.restaurantRating, this.coverImage,
      this.restaurantLocation);
}

class RestaurantList {
  static List<RestaurantModel> getRestaurants = [
    RestaurantModel(
        "Seafood Lovers", 5.0, "./assets/hamburger.png", "Kinondoni B"),
    RestaurantModel(
        "Shishi Food   ", 5.0, "./assets/biryani.png", "Kijitonyama"),
    RestaurantModel(
        "Shangazi Cafe ", 4.5, "./assets/pilau.png", "Dumila Chini"),
    RestaurantModel("External Cafe", 5.0, "./assets/hamburger.png", "External"),
    RestaurantModel(
        "Mautamu Spices   ", 5.0, "./assets/biryani.png", "Mbezi Mwisho"),
    RestaurantModel("Kazimoto Porks ", 4.5, "./assets/pilau.png", "Segerea"),
    RestaurantModel(
        "Mr Liverpool", 5.0, "./assets/hamburger.png", "Mpanda Mjini"),
    RestaurantModel(
        "Sossie Foods   ", 5.0, "./assets/biryani.png", "Kinyerezi"),
    RestaurantModel("Shangazi Chichi ", 4.5, "./assets/pilau.png", "Msasani")
  ];
  static List<RestaurantModel> displayList = List.from(getRestaurants);
}
