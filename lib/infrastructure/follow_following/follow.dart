import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

addFollow(String userId) async {
  log(userId);
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final followDoc = user.collection('Follow').doc('following');

  final toCheckFolllow = await followDoc.get();
  if (toCheckFolllow.exists) {
    await followDoc.update({'following$userId': userId});
  } else {
    await followDoc.set({'following$userId': userId});
  }

  final followingUser =
      FirebaseFirestore.instance.collection('Artwork').doc(userId);
  final followingUserDoc = followingUser.collection('Follow').doc('follower');

  final toCheckFollowing = await followingUserDoc.get();
  if (toCheckFollowing.exists) {
    await followingUserDoc
        .update({'follower${currentUser.uid}': currentUser.uid});
  } else {
    await followingUserDoc.set({'follower${currentUser.uid}': currentUser.uid});
  }
}

removeFollow(String userId) async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final followDoc = user.collection('Follow').doc('following');

  await followDoc.update({'following$userId': FieldValue.delete()});

  final followingUser =
      FirebaseFirestore.instance.collection('Artwork').doc(userId);
  final followingUserDoc = followingUser.collection('Follow').doc('follower');
  await followingUserDoc
      .update({'follower${currentUser.uid}': FieldValue.delete()});
}

Future<List> getFolllowers() async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final followersDoc = user.collection('Follow').doc('follower');
  final followersData = await followersDoc.get();
  if (followersData.data() == null) {
    return [];
  }
  final followersList = followersData.data()!.values.toList();
  return followersList;
}

Future<List> getVisitingUserFolllowers(String visitingUserId) async {
  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(visitingUserId);
  final followersDoc = user.collection('Follow').doc('follower');
  final followersData = await followersDoc.get();
  final followersList = followersData.data()!.values.toList();
  return followersList;
}

Future<List> getFolllowing() async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  final followingDoc = user.collection('Follow').doc('following');
  final followingData = await followingDoc.get();
  if (followingData.data() == null) {
    return [];
  }
  final followingList = followingData.data()!.values.toList();
  return followingList;
}

Future<List> getVisitingUserFollowing(String visitingUserId) async {
  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(visitingUserId);
  final followingDoc = user.collection('Follow').doc('following');
  final followingData = await followingDoc.get();
  final followingList = followingData.data()!.values.toList();
  return followingList;
}

Future<bool> checkFollowed(String visitingUserId) async {
  final currentUser = FirebaseAuth.instance.currentUser;

  final user =
      FirebaseFirestore.instance.collection('Artwork').doc(currentUser!.uid);
  // final look = await user.get();
  // if (!look.exists) {
  //   return false;
  // }

  final followingDoc = user.collection('Follow').doc('following');

  final followingData = await followingDoc.get();
  if (!followingData.exists) {
    log('hii');
    return false;
  }

  final followingList = followingData.data()!.values.toList();
  // if (followingList.isEmpty) {
  //   return false;
  // }
  // bool isFollowing = false;
  final isFollowing =
      followingList.where((element) => element == visitingUserId).isNotEmpty;

  return isFollowing;
}
