class Order {
  final String orderId;
  final String userId;
  final List artworkIdMap;
  final num totalPrice;
  final Map orderedAddress;
  const Order(
      {required this.orderId,
      required this.artworkIdMap,
      required this.totalPrice,
      required this.userId,
      required this.orderedAddress});

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'artworkIdMap': artworkIdMap,
      'totalPrice': totalPrice,
      'userId': userId,
      'orderedAddress':orderedAddress,
    };
  }

  static Order fromJson(Map<dynamic, dynamic> json) {
    return Order(
      orderedAddress:json['orderedAddress'],
      orderId: json['orderId'],
      artworkIdMap: json['artworkIdMap'],
      totalPrice: json['totalPrice'],
      userId: json['userId'],
    );
  }
}
