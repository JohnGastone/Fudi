class CategoriesModel {
  String? categoryName;
  String? categoryImage;

  CategoriesModel({this.categoryName, this.categoryImage});
}

class CategoriesList {
  static List<CategoriesModel> foodCategories = [
    CategoriesModel(categoryName: "Bugger", categoryImage: "assets/bugger.png"),
    CategoriesModel(
        categoryName: "Biryani", categoryImage: "assets/biryani.png"),
    CategoriesModel(categoryName: "Pilau", categoryImage: "assets/pilau.png"),
    CategoriesModel(
        categoryName: "Pizza", categoryImage: "assets/margeritha.png"),
    CategoriesModel(categoryName: "Chips", categoryImage: "assets/chips.png"),
  ];
  static List<CategoriesModel> displayList = List.from(foodCategories);
}
