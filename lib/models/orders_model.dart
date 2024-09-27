class FoodOrdersModel {
  DateTime? orderDate;
  String? orderID;
  String? orderStatus;
  String? restaurantName;
  int? orderPrice;
  int? orderDeliveryTime;

  FoodOrdersModel({
    this.orderDate,
    this.orderID,
    this.orderStatus,
    this.restaurantName,
    this.orderPrice,
    this.orderDeliveryTime,
  });
}

class FoodOrdersList {
  static List<FoodOrdersModel> getOrderList = [
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 03),
      orderID: "001",
      orderStatus: "Delivered",
      restaurantName: "Seafood Lovers",
      orderPrice: 40000,
      orderDeliveryTime: 10,
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 03),
      orderID: "002",
      orderStatus: "On the way",
      restaurantName: "Shishi Food",
      orderPrice: 25000,
      orderDeliveryTime: 15,
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 02),
      orderID: "003",
      orderStatus: "Delivered",
      restaurantName: "Shangazi Cafe",
      orderPrice: 18000,
      orderDeliveryTime: 20,
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 02),
      orderID: "004",
      orderStatus: "Pending",
      restaurantName: "Samaki Samaki",
      orderPrice: 35000,
      orderDeliveryTime: 25,
    ),
    FoodOrdersModel(
      orderDate: DateTime(2024, 06, 01),
      orderID: "005",
      orderStatus: "Delivered",
      restaurantName: "Burger S3",
      orderPrice: 20000,
      orderDeliveryTime: 30,
    ),
    FoodOrdersModel(
        orderDate: DateTime(2024, 06, 01),
        orderID: "006",
        orderStatus: "Pending",
        restaurantName: "Visinia Spot",
        orderPrice: 35000,
        orderDeliveryTime: 13),
  ];

  static List<FoodOrdersModel> displayOrders = List.from(getOrderList);
}
