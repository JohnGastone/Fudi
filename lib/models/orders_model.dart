class FoodOrdersModel {
  DateTime? orderDate;
  String? orderID;
  String? orderStatus;
  String? restaurantName;

  FoodOrdersModel({
    this.orderDate,
    this.orderID,
    this.orderStatus,
    this.restaurantName,
  });
}

class FoodOrdersList {
  static List<FoodOrdersModel> getOrderList = [
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 03),
      orderID: "001",
      orderStatus: "Delivered",
      restaurantName: "Seafood Lovers",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 03),
      orderID: "002",
      orderStatus: "On the way",
      restaurantName: "Shishi Food",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 02),
      orderID: "003",
      orderStatus: "Delivered",
      restaurantName: "Shangazi Cafe",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 02),
      orderID: "004",
      orderStatus: "Pending",
      restaurantName: "Shangazi Cafe",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 01),
      orderID: "005",
      orderStatus: "Delivered",
      restaurantName: "Shangazi Cafe",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 01),
      orderID: "006",
      orderStatus: "Pending",
      restaurantName: "Shangazi Cafe",
    ),
  ];

  static List<FoodOrdersModel> displayOrders = List.from(getOrderList);
}
