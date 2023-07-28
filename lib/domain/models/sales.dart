class Sales {
  final String orderId;
  final String artworkId;
  final String orderStatus;
  final String orderedUserId;
  final Map orderedAddress;

  const Sales({
    required this.orderId,
    required this.artworkId,
    required this.orderStatus,
    required this.orderedUserId,
    required this.orderedAddress,
  });

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'artworkIdList': artworkId,
      'orderStatus': orderStatus,
      'orderedUserId': orderedUserId,
      'orderedAddress': orderedAddress,
    };
  }

  static Sales fromJson(Map<dynamic, dynamic> json) {
    return Sales(
      orderId: json['orderId'],
      artworkId: json['artworkIdList'],
      orderStatus: json['orderStatus'],
      orderedUserId: json['orderedUserId'],
      orderedAddress: json['orderedAddress'],
    );
  }
}
