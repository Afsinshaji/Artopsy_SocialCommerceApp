import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/models/chat.dart';

sendMessage(
  String content,
  String peerId,
) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final currentUserId = currentUser!.uid;
  String groupChatId = '';
  if (currentUserId.compareTo(peerId) > 0) {
    groupChatId = '$currentUserId-$peerId';
  } else {
    groupChatId = '$peerId-$currentUserId';
  }
  final chatDoc =
      FirebaseFirestore.instance.collection('Chat').doc(groupChatId);
  final timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
  final chat = Chat(
    chatFromId: currentUserId,
    chatToId: peerId,
    message: content,
    timeStamp: timeStamp,
    isMessageReaded: false,
  );
  final chatMap = chat.toJson();
  final chatDocGet = await chatDoc.get();
  if (!chatDocGet.exists) {
    await chatDoc.set({timeStamp: chatMap});
  } else {
    await chatDoc.update({timeStamp: chatMap});
  }
}

Stream<DocumentSnapshot<Map<String, dynamic>>> recievedMessage(
  String peerId,
) {
  final currentUser = FirebaseAuth.instance.currentUser;
  final currentUserId = currentUser!.uid;
  String groupChatId = '';
  if (currentUserId.compareTo(peerId) > 0) {
    groupChatId = '$currentUserId-$peerId';
  } else {
    groupChatId = '$peerId-$currentUserId';
  }
  final chatDoc =
      FirebaseFirestore.instance.collection('Chat').doc(groupChatId);

  final chatSnapshots = chatDoc.snapshots();

  messageReaded(peerId);
  return chatSnapshots;
}

Stream<QuerySnapshot<Map<String, dynamic>>> totalChatIds() {
  final chatCollection = FirebaseFirestore.instance.collection('Chat');
  final chatDocSnapshot = chatCollection.snapshots();

  return chatDocSnapshot;
}

messageReaded(
  String peerId,
) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final currentUserId = currentUser!.uid;
  String groupChatId = '';
  if (currentUserId.compareTo(peerId) > 0) {
    groupChatId = '$currentUserId-$peerId';
  } else {
    groupChatId = '$peerId-$currentUserId';
  }
  final chatDoc =
      FirebaseFirestore.instance.collection('Chat').doc(groupChatId);
  final dataGet = await chatDoc.get();
  final data = dataGet.data();
  final dataList = data!.values.toList();

  for (var element in dataList) {
    if (element['chatToId'] == currentUserId) {
      element['isMessageReaded'] = true;
      final timeStamp = element['timeStamp'];
      await chatDoc.update({timeStamp: element});
    }
  }
}
