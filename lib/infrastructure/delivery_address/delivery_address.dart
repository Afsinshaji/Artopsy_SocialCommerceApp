import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/models/shopping_address.dart';

Future<void> addShoppingAddress(ShoppingAddress address) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final addressMap = userData.data();
  final json = address.toJson();
  if (addressMap!.containsKey('ShoppingAddress')) {
    final List addressList = addressMap['ShoppingAddress'];
    addressList.add(json);
    await user.update({'ShoppingAddress': addressList});
  } else {
    await user.update({
      'ShoppingAddress': [json]
    });
  }
}

Future<void> deleteShoppingAddress(ShoppingAddress address) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final addressMap = userData.data();
  final List addressList = addressMap!['ShoppingAddress'];
  addressList
      .removeWhere((element) => element['addressId'] == address.addressId);
 await user.update({
    'ShoppingAddress': addressList,
  });
}

Future<void> editShoppingAddresss(
    ShoppingAddress oldAddress, ShoppingAddress newAddress) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final addressMap = userData.data();
  final List addressList = addressMap!['ShoppingAddress'];
  int index = addressList
      .indexWhere((element) => element['addressId'] == oldAddress.addressId);
  final json = newAddress.toJson();
  addressList[index] = json;
  user.update({
    'ShoppingAddress': addressList,
  });
}

Future<List<ShoppingAddress>> readShoppingAddress() async {
  log('address is not here');
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final addressMap = userData.data();

  if (!addressMap!.containsKey('ShoppingAddress')) {
    return [];
  }
  log(addressMap['ShoppingAddress'].toString());
  final addressList = addressMap['ShoppingAddress'];

 
  List<ShoppingAddress> shoppingAddressList = [];
  for (int i = 0; i < addressList.length; i++) {
      shoppingAddressList.add (ShoppingAddress.fromJson(addressList[i]));
  }

  log(shoppingAddressList.toString());
  return shoppingAddressList;
}
