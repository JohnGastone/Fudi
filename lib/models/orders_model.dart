class FoodOrdersModel {
  DateTime? orderDate;
  String? orderID;
  String? orderStatus;

  FoodOrdersModel({
    this.orderDate,
    this.orderID,
    this.orderStatus,
  });
}

class FoodOrdersList {
  static List<FoodOrdersModel> getOrderList = [
    FoodOrdersModel(
      orderDate: DateTime.now(),
      orderID: "001",
      orderStatus: "Pending",
    ),
    FoodOrdersModel(
      orderDate: DateTime.now(),
      orderID: "002",
      orderStatus: "Pending",
    ),
    FoodOrdersModel(
      orderDate: DateTime.now(),
      orderID: "003",
      orderStatus: "Pending",
    ),
    FoodOrdersModel(
      orderDate: DateTime.now(),
      orderID: "004",
      orderStatus: "Pending",
    ),
    FoodOrdersModel(
      orderDate: DateTime.now(),
      orderID: "005",
      orderStatus: "Pending",
    ),
    FoodOrdersModel(
      orderDate: DateTime.now(),
      orderID: "006",
      orderStatus: "Pending",
    ),
  ];
}
