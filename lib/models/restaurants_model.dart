class RestaurantModel {
  String? restaurantName;
  double? restaurantRating;
  String? coverImage;

  RestaurantModel(this.restaurantName, this.restaurantRating, this.coverImage);
}

class RestaurantList {
  static List<RestaurantModel> getRestaurants = [
    RestaurantModel("Seafood Lovers", 5.0, "./assets/SeafoodLovers.png"),
    RestaurantModel("Shishi", 5.0, "./assets/shishifood.png"),
    RestaurantModel("Shangazi Cafe", 4.5, "./assets/shangazi.png")
  ];
}
