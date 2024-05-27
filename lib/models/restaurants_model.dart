class RestaurantModel {
  String? restaurantName;
  double? restaurantRating;
  String? coverImage;

  RestaurantModel(this.restaurantName, this.restaurantRating, this.coverImage);
}

class RestaurantList {
  static List<RestaurantModel> getRestaurants = [
    RestaurantModel("Seafood Lovers", 5.0, "./assets/hamburger.png"),
    RestaurantModel("Shishi Food   ", 5.0, "./assets/biryani.png"),
    RestaurantModel("Shangazi Cafe ", 4.5, "./assets/pilau.png")
  ];
  static List<RestaurantModel> displayList = List.from(getRestaurants);
}
