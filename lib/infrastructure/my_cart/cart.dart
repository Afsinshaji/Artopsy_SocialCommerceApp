import 'dart:developer';

import 'package:artopsy/domain/models/artwork_details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../artwork/add_artwork.dart';

addtoCart(ArtworkDetails artwork) async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final cartCollection = user.collection('Cart');
  final cartDoc = cartCollection.doc('My Cart');
  final toCheckCart = await cartDoc.get();
  if (toCheckCart.exists) {
    log('Loooooookkkkk Addeeedddddd');
    await cartDoc.update({'artwork${artwork.artworkId}': artwork.artworkId});
  } else {
    await cartDoc.set({'artwork${artwork.artworkId}': artwork.artworkId});
  }
}

addToCart(ArtworkDetails artwork) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final cartMap = userData.data();
  if (cartMap!.containsKey('Mycart')) {
    final List cartList = cartMap['Mycart'];
    cartList.add(artwork.artworkId);
  } else {
    user.update({
      'Mycart': [artwork.artworkId]
    });
  }
}

readFromCart() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final cartMap = userData.data();
  if (cartMap!.containsKey('Mycart')) {
    final List cartList = cartMap['Mycart'];
    final completeListStream = readCompleteArtworkList();
    final completeListofList = await completeListStream.toList();
    final completeList =
        completeListofList.expand((element) => element).toList();
    List<ArtworkDetails> cartArtworkList = [];
    for (int index = 0; index < cartList.length; index++) {
      int newIndex = completeList
          .indexWhere((element) => element.artworkId == cartList[index]);
      cartArtworkList[index] = completeList[newIndex];
    }

    return cartArtworkList;
  } else {
    return [];
  }
}

Future<List<ArtworkDetails>> readCart() async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final cartCollection = user.collection('Cart');
  final cartDoc = cartCollection.doc('My Cart');
  final cartDataGet = await cartDoc.get();
  final cartData = cartDataGet.data();
  if (cartData == null) {
    return [];
  }
  final cartArtIdList = cartData.values.toList();
  log(cartArtIdList.toString());

  // final completeListStream = readCompleteArtworkList();
  List<ArtworkDetails> cartlist = [];
  log('hooiiii');
  final data =
      await readCompleteArtworkListStreamtoFuture(readCompleteArtworkList());

  final List<ArtworkDetails> completeList = data[0];
  log('okay');
  log(completeList.toString());

  for (int index = 0; index < cartArtIdList.length; index++) {
    int newIndex = completeList
        .indexWhere((element) => element.artworkId == cartArtIdList[index]);
    log(completeList[newIndex].artworkId.toString());
    cartlist.add(completeList[newIndex]);
  }

  log(cartlist.toString());

  return cartlist;
}

removeFromCart(String artworkId) async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final cartCollection = user.collection('Cart');
  final cartDoc = cartCollection.doc('My Cart');
  await cartDoc.update({'artwork$artworkId': FieldValue.delete()});
}

Future<bool> isAddedToCart(String artworkId) async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final cartCollection = user.collection('Cart');
  final cartDoc = cartCollection.doc('My Cart');
  final cartDataGet = await cartDoc.get();

  final cartData = cartDataGet.data();
  if (cartData == null) {
    return false;
  }
  final cartArtIdList = cartData.values.toList();
  final bool isAddedToCart = cartArtIdList.contains(artworkId);
  return isAddedToCart;
}

clearCart() async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final cartCollection = user.collection('Cart');
  final cartDoc = cartCollection.doc('My Cart');
  await cartDoc.delete();
}
