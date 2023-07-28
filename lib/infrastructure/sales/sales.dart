import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/models/artwork_details.dart';
import '../../domain/models/sales.dart';
import '../artwork/add_artwork.dart';
import '../users/add_user_name.dart';

placeSelling(List<ArtworkDetails> artworkList, String orderId,
    String orderedUserId, Map orderedAddress) async {
  for (var artwork in artworkList) {
    final visitingUserCollection = getVisitingUserCollection(artwork.userId);
    final userData = await visitingUserCollection.get();
    final userMap = userData.data();
    final saleClass = Sales(
        orderedAddress: orderedAddress,
        orderedUserId: orderedUserId,
        orderId: orderId,
        artworkId: artwork.artworkId,
        orderStatus: 'Processing');
    final sale = saleClass.toJson();
    if (userMap!.containsKey('Sales')) {
      final List salesList = userMap['Sales'];
      salesList.add(sale);
      visitingUserCollection.update({'Sales': salesList});
    } else {
      visitingUserCollection.update({
        'Sales': [sale]
      });
    }

    await isSold(artwork, true);
  }
}

cancelSelling(ArtworkDetails artwork, String orderId) async {
  final visitingUserCollection = getVisitingUserCollection(artwork.userId);
  final userData = await visitingUserCollection.get();
  final userMap = userData.data();
  final List salesList = userMap!['Sales'];
  // salesList
  //     .removeWhere((element) => element['artworkIdList'] == artwork.artworkId);
        final int index = salesList
      .indexWhere((element) => element['artworkIdList'] == artwork.artworkId);
  salesList[index]['orderStatus'] = 'Cancelled';
  await visitingUserCollection.update({'Sales': salesList});
}
deleteSalesReport(ArtworkDetails artwork, String orderId)async{
 final visitingUserCollection = getVisitingUserCollection(artwork.userId);
  final userData = await visitingUserCollection.get();
  final userMap = userData.data();
  final List salesList = userMap!['Sales'];
  salesList
      .removeWhere((element) => element['artworkIdList'] == artwork.artworkId);
        await visitingUserCollection.update({'Sales': salesList});
}

Future<List<Sales>> readSales() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final userMap = userData.data();
  final List salesMapList = userMap!['Sales'];
  final List<Sales> salesList = [];
  for (var sales in salesMapList) {
    salesList.add(Sales.fromJson(sales));
  }
  return salesList;
}

changeOrderStatus(String status, String artworkId, String orderedUserId,
    String orderId) async {

      
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final userMap = userData.data();
  final List salesMapList = userMap!['Sales'];
  final int index = salesMapList
      .indexWhere((element) => element['artworkIdList'] == artworkId);
  salesMapList[index]['orderStatus'] = status;

  await user.update({'Sales': salesMapList});
  // You will never understand what happening
  // look again look harder...
  log(status);
  final orderedUser =
      FirebaseFirestore.instance.collection('Users').doc(orderedUserId);
  final orderedUserData = await orderedUser.get();
  final orderedUserMap = orderedUserData.data();
  final List orderedUserList = orderedUserMap!['Order'];
  int listindex =
      orderedUserList.indexWhere((element) => element['orderId'] == orderId);
  final List orderedUserartworkIdMap =
      orderedUserList[listindex]['artworkIdMap'];
  int newIndex = orderedUserartworkIdMap
      .indexWhere((element) => element['artworkId'] == artworkId);
  orderedUserartworkIdMap[newIndex]['orderStatus'] = status;

  orderedUserList[listindex]['artworkIdMap'] = orderedUserartworkIdMap;

  await orderedUser.update({'Order': orderedUserList});
}
