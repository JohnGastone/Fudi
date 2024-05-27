class FoodCategories {
  String? categoryName;
  String? categoryImage;

  FoodCategories({this.categoryName, this.categoryImage});
}

class CategoriesList {
  static List<FoodCategories>? foodCategories = [
    FoodCategories(categoryName: "Bugger", categoryImage: "assets/bugger.png"),
    FoodCategories(
        categoryName: "Biryani", categoryImage: "assets/biryani.png"),
    FoodCategories(categoryName: "Pilau", categoryImage: "assets/pilau.png"),
    FoodCategories(
        categoryName: "Pizza", categoryImage: "assets/margeritha.png"),
    FoodCategories(
        categoryName: "Dairy", categoryImage: "assets/margeritha.png"),
  ];
}
