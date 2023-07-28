import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

import '../../domain/models/user_profile.dart';
import '../artwork/add_artwork.dart';

DocumentReference<Map<String, dynamic>> getUserCollection() {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);

  return user;
}

DocumentReference<Map<String, dynamic>> getVisitingUserCollection(
    String visitingId) {
  final user = FirebaseFirestore.instance.collection('Users').doc(visitingId);

  return user;
}

Future<void> addUserName(String userName, String userEmail) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userGet =await user.get();
  if(!userGet.exists)
 { final userProfile = UserProfile(
    userName: userName,
    userId: user.id,
    adress: '',
    gender: '',
    imageUrl: '',
    phoneNumber: '',
    backgroundImage: '',
    userEmail: userEmail,
  );
  final json = userProfile.toJson();
  await user.set(json);}
}

Future<UserProfile> showUser() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  log(currentUser!.uid);
  final userColllection = FirebaseFirestore.instance.collection('Users');
  final userDocument = userColllection.doc(currentUser.uid);
  final userDataMap = await userDocument.get();

  final UserProfile userData = UserProfile.fromJson(userDataMap.data()!);
  return userData;
}

Future<UserProfile> showVisitingUser(String visitingUserId) async {
  // final currentUser = FirebaseAuth.instance.currentUser;
  // log(currentUser!.uid);
  final userColllection = FirebaseFirestore.instance.collection('Users');
  final userDocument = userColllection.doc(visitingUserId);
  final userDataMap = await userDocument.get();
  final UserProfile userData = UserProfile.fromJson(userDataMap.data()!);
  return userData;
}

Future addUserProfileDetails(UserProfile userDetails) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final json = userDetails.toJson();
  await user.set(json);
}

Stream<List<UserProfile>> readAllusers() {
  final userCollection = FirebaseFirestore.instance.collection('Users');
  final completeUserList = userCollection.snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => UserProfile.fromJson(doc.data())).toList());
  return completeUserList;
}

Future addUserBackgroundImage(AssetEntity asset) async {
  final imageUrl = await uploading(asset);
  final user = getUserCollection();
  await user.update({'backgroundImage': imageUrl});
}
