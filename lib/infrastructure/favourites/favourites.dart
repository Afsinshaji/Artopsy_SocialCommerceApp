import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';
import '../../domain/models/artwork_details.dart';
import '../artwork/add_artwork.dart';

addTofav(ArtworkDetails artwork) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final favMap = userData.data();
  if (favMap!.containsKey('Favourites')) {
    final List favList = favMap['Favourites'];
    favList.add(artwork.artworkId);
    user.update({
      'Favourites': favList,
    });
  } else {
    user.update({
      'Favourites': [artwork.artworkId]
    });
  }
}

Future<List<ArtworkDetails>> readFav() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final favMap = userData.data();
  if (favMap!.containsKey('Favourites')) {
    final List favIdList = favMap['Favourites'];

    final data =
        await readCompleteArtworkListStreamtoFuture(readCompleteArtworkList());

    final List<ArtworkDetails> completeList = data[0];
    List<ArtworkDetails> favList = [];
    for (int i = 0; i < favIdList.length; i++) {
      int index = completeList
          .indexWhere((element) => element.artworkId == favIdList[i]);
      favList.add(completeList[index]);
    }
    return favList;
  } else {
    return [];
  }
}

removeFav(ArtworkDetails artwork) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final favMap = userData.data();
  final List favList = favMap!['Favourites'];
  favList.removeWhere((element) => element == artwork.artworkId);
  user.update({
    'Favourites': favList,
  });
}

Future<bool> checkFav(ArtworkDetails artwork) async {
  log('likeeeeeeeeeeeeeeeeee');
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final favMap = userData.data();
  if (!favMap!.containsKey('Favourites')) {
    return false;
  }

  final List favList = favMap['Favourites'];
  if (favList.contains(artwork.artworkId)) {
    log('Finding Issues');
    log(favList
        .indexWhere((element) => element == artwork.artworkId)
        .toString());
    return true;
  } else {
    log('This Doesnt print');
    log(favList
        .indexWhere((element) => element == artwork.artworkId)
        .toString());
    return false;
  }
  //return false;
}

addAndremoveFav(ArtworkDetails artwork) async {
  final isLiked = await checkFav(artwork);

  if (!isLiked) {
    await addTofav(artwork);
    await increaseLike(artwork.artworkId);
  } else {
   await removeFav(artwork);
   await decreaseLike(artwork.artworkId);
  }
}

increaseLike(String artworkId) async {
  final postDoc = completeArtworkList(artworkId);
  final dataGet = await postDoc.get();
  final data = dataGet.data();
  if (data == null) {
    return;
  }
  if (data.containsKey('Likes')) {
    var likes = data['Likes'];
    likes = likes + 1;

    postDoc.update({'Likes': likes});
  } else {
    postDoc.update({'Likes': 1});
  }
}

decreaseLike(String artworkId) async {
  final postDoc = completeArtworkList(artworkId);
  final dataGet = await postDoc.get();
  final data = dataGet.data();
  if (data == null) {
    return;
  }
  if (data.containsKey('Likes')) {
    var likes = data['Likes'];
    likes = likes - 1;

    postDoc.update({'Likes': likes});
  } else {
    postDoc.update({'Likes': 0});
  }
}

getLikesNum(String artworkId) async {
  final postDoc = completeArtworkList(artworkId);
  final dataGet = await postDoc.get();
  final data = dataGet.data();
  if (data == null) {
    return 0;
  }
  if (data.containsKey('Likes')) {
    var likes = data['Likes'];
    return likes;
  } else {
    postDoc.update({'Likes': 0});
    return 0;
  }
}
