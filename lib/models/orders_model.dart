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
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 03),
      orderID: "002",
      orderStatus: "On the way",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 02),
      orderID: "003",
      orderStatus: "Deliverd",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 02),
      orderID: "004",
      orderStatus: "Pending",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 01),
      orderID: "005",
      orderStatus: "Delivered",
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 01),
      orderID: "006",
      orderStatus: "Pending",
    ),
  ];

  static List<FoodOrdersModel> displayOrders = List.from(getOrderList);
}
