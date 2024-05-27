class FoodCategories {
  String? categoryName;
  String? categoryImage;

  FoodCategories({this.categoryName, this.categoryImage});
}

class CategoriesList {
  static List<FoodCategories>? foodCategories = [
    FoodCategories(
        categoryName: "Fruits", categoryImage: "assets/images/fruits.png"),
    FoodCategories(
        categoryName: "Vegetables",
        categoryImage: "assets/images/vegetables.png"),
    FoodCategories(
        categoryName: "Meat", categoryImage: "assets/images/meat.png"),
    FoodCategories(
        categoryName: "Dairy", categoryImage: "assets/images/dairy.png"),
    FoodCategories(
        categoryName: "Others", categoryImage: "assets/images/others.png"),
  ];
}
