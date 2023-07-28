import 'package:artopsy/infrastructure/sales/sales.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/models/artwork_details.dart';
import '../../domain/models/order.dart';
import '../../domain/models/shopping_address.dart';
import '../artwork/add_artwork.dart';
import '../users/add_user_name.dart';

Future<void> placeOrder(List<ArtworkDetails> artworkList, num totalPrice,
    ShoppingAddress orderedAddress) async {
  DateTime now = DateTime.now();
  String timeStamp = now.microsecondsSinceEpoch.toString();
  final currentUser = FirebaseAuth.instance.currentUser;
  final userCollection = getUserCollection();
  final userData = await userCollection.get();
  final userMap = userData.data();
  final currentUserId = currentUser!.uid;
  List<Map<String, String>> artworkIdMap = [];
  for (var element in artworkList) {
    artworkIdMap.add({
      'artworkId': element.artworkId,
      'orderStatus': 'Processing',
    });
  }
  final address = orderedAddress.toJson();
  final order = Order(
    artworkIdMap: artworkIdMap,
    orderId: '$currentUserId$timeStamp',
    totalPrice: totalPrice,
    userId: currentUserId,
    orderedAddress: address,
  );
  final Map<String, dynamic> orderMap = order.toJson();
  if (userMap!.containsKey('Order')) {
    final List orderList = userMap['Order'];
    orderList.add(orderMap);
    await userCollection.update({'Order': orderList});
  } else {
    await userCollection.update({
      'Order': [orderMap]
    });
  }
  await placeSelling(
      artworkList, '$currentUserId$timeStamp', currentUserId, address);
}

cancelOrder(ArtworkDetails artwork, String orderId) async {
  final userCollection = getUserCollection();
  final userData = await userCollection.get();
  final userMap = userData.data();
  final List orderList = userMap!['Order'];
  int index = orderList.indexWhere((element) => element['orderId'] == orderId);
  final List artworkIdMap = orderList[index]['artworkIdMap'];

  artworkIdMap
      .removeWhere((element) => element['artworkId'] == artwork.artworkId);
  orderList[index]['artworkIdMap'] = artworkIdMap;
  await userCollection.update({'Order': orderList});
  // Map a = {'s': 'kkk'};
  // a['s'] = 'jjj';
  // print(a);
  await cancelSelling(artwork, orderId);
  await isSold(artwork, false);
}

Future<List<Order>> readOrder() async {
  final userCollection = getUserCollection();
  final userData = await userCollection.get();
  final userMap = userData.data();
  final List orderMapList = userMap!['Order'];
  List<Order> orderList = [];
  for (var order in orderMapList) {
    orderList.add(Order.fromJson(order));
  }
  return orderList;
}

Map<String, List> takingArtworkList(List<Order> orderList) {
  List mapListofList = [];
  List orderIdList = [];
  List orderedAddress = [];
  List<Map<String, dynamic>> mapList = [];
  for (var artworkMap in orderList) {
    mapListofList = artworkMap.artworkIdMap;
    for (var map in mapListofList) {
      mapList.add(map);
      orderIdList.add(artworkMap.orderId);
      orderedAddress.add(artworkMap.orderedAddress);
    }
  }
  return {'mapList': mapList, 'orderIdList': orderIdList,'orderedAddress':orderedAddress};
}
