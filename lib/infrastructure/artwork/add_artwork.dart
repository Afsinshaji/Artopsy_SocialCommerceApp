import 'dart:developer';
import 'dart:io';

import 'package:artopsy/domain/models/artwork_details.dart';
import 'package:artopsy/domain/models/user_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../users/add_user_name.dart';

CollectionReference<Map<String, dynamic>> userArtworks() {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final postCollection = user.collection('posted Artwork');
  return postCollection;
}

Future<void> addArtwork(ArtworkDetails data, AssetEntity assetEntity) async {
  final String imageUrl = await uploading(assetEntity);
  final UserProfile user = await showUser();
  // ignore: unnecessary_null_comparison
  if (user == null) {
    log('User is Null');
    return;
  }
  final String userName = user.userName;
  final postDoc = userArtworks().doc();
  await addToCompleteArtworkList(data, postDoc.id, userName, imageUrl);
  final json = data.toJson(postDoc.id, userName, imageUrl);
  await postDoc.set(json);
}

Future<void> editArtwork(ArtworkDetails newData, String artworkId,
    AssetEntity? assetEntity, ArtworkDetails oldData) async {
  final postDoc = userArtworks().doc(artworkId);
  String imageUrl = oldData.imageUrl;

  if (assetEntity != null) {
    imageUrl = await uploading(assetEntity);
  }

  await addToCompleteArtworkList(newData, artworkId, oldData.artist, imageUrl);
  final json = newData.toJson(artworkId, oldData.artist, imageUrl);
  await postDoc.set(json);
}

Future<void> deleteArtwork(String artworkId) async {
  final postDoc = userArtworks().doc(artworkId);
  await deleteFromCompleteArtworkList(artworkId);
  await postDoc.delete();
}

Stream<List<ArtworkDetails>> readArtwork() {
  final postedArtwork = userArtworks().snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => ArtworkDetails.fromJson(doc.data())).toList());
  return postedArtwork;
}

Future<int> artworkLength() {
  final postedArtwork = userArtworks().snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => ArtworkDetails.fromJson(doc.data())).toList());

  return postedArtwork.length;
}

Stream<List<ArtworkDetails>> readVisitingArtwork(String visitingUserId) {
  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(visitingUserId);
  final postCollection = user.collection('posted Artwork');

  final postedArtwork = postCollection.snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => ArtworkDetails.fromJson(doc.data())).toList());

  return postedArtwork;
}

//-------------------------------------------------------------------------------------------------//
// Complete Artwork List - That includes all the artworks done by all of the users.
//----------------------------------------------------------------------------------------------//

DocumentReference<Map<String, dynamic>> completeArtworkList(String artworkId) {
  final completeCollection =
      FirebaseFirestore.instance.collection('CompleteArtworkList');
  final postDoc = completeCollection.doc(artworkId);
  return postDoc;
}

addToCompleteArtworkList(
    ArtworkDetails data, String artworkId, String artist, String url) {
  final postDoc = completeArtworkList(artworkId);
  final json = data.toJson(artworkId, artist, url);
  postDoc.set(json);
}

deleteFromCompleteArtworkList(String artworkId) {
  final postDoc = completeArtworkList(artworkId);
  postDoc.delete();
}

Stream<List<ArtworkDetails>> readCompleteArtworkList() {
  final completeCollection =
      FirebaseFirestore.instance.collection('CompleteArtworkList');
  final completeArtwork = completeCollection.snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => ArtworkDetails.fromJson(doc.data())).toList());
  return completeArtwork;
}

readCompleteArtworkListStreamtoFuture(
    Stream<List<ArtworkDetails>> stream) async {
  List artworkList = [];
  await for (final value in stream) {
    log(value.toString());
    artworkList.add(value);
    log(artworkList.toString());
    break;
  }
  // log('deei');
  // log(artworkList.toString());
  return artworkList;
}

searchTitleList(List<ArtworkDetails> completeArtworkList) {
  List artworkTitleList = [];
  for (var i = 0; i < completeArtworkList.length; i++) {
    artworkTitleList[i] = completeArtworkList[i].title;
  }
  return artworkTitleList;
}

searchArtistList(List<ArtworkDetails> completeArtworkList) {
  List artworkArtistList = [];
  for (var i = 0; i < completeArtworkList.length; i++) {
    artworkArtistList[i] = completeArtworkList[i].title;
  }
  return artworkArtistList;
}

//
// upload images
//
Future<String> uploading(AssetEntity asset) async {
  final file = await asset.file;
  final String downloadUrl = await uploadImage(file!);
  return downloadUrl;
}

uploadImage(File file) async {
  DateTime now = DateTime.now();
  String timeStamp = now.microsecondsSinceEpoch.toString();
  final storage = FirebaseStorage.instance;
  final storageRef = storage.ref();
  final imageRef = storageRef.child("ImageEntity/$timeStamp");

  // log(imageRef.toString());
  // log(file.toString());
  final task = await imageRef.putFile(file);

  final String downloadUrl = await task.ref.getDownloadURL();
  return downloadUrl;
}

isSold(ArtworkDetails artwork, bool isSold) async {
  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(artwork.userId);
  final postCollection = user.collection('posted Artwork');
  final postDoc = postCollection.doc(artwork.artworkId);
  final dataGet = await postDoc.get();
  final data = dataGet.data()!;
  data['isSold'] = isSold;
  await postDoc.set(data);

  final completePostDoc = completeArtworkList(artwork.artworkId);
  final completedataGet = await completePostDoc.get();
  final completeData = completedataGet.data()!;
  completeData['isSold'] = isSold;
  await completePostDoc.set(completeData);
}
