import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

addToWallet(int amount) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final walletMap = userData.data();
  if (walletMap!.containsKey('Wallet')) {
    final inHand = walletMap['Wallet'];
    final total = inHand + amount;
    user.update({
      'Wallet': total,
    });
  } else {
    user.update({
      'Wallet': amount
    });
  }
}

addToWalletOrderedUser(int amount, String peerId) async {
  final user = FirebaseFirestore.instance.collection('Users').doc(peerId);
  final userData = await user.get();
  final walletMap = userData.data();
  if (walletMap!.containsKey('Wallet')) {
    final inHand = walletMap['Wallet'];
    final total = inHand + amount;
    user.update({
      'Wallet': total,
    });
  } else {
    user.update({
      'Wallet': amount
    });
  }
}

removeFromWallet(int amount) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final walletMap = userData.data();
  if (walletMap!.containsKey('Wallet')) {
    final inHand = walletMap['Wallet'];
    final total = inHand - amount;
    user.update({
      'Wallet': total,
    });
  } else {
    user.update({
      'Wallet': amount
    });
  }
}

readWallet() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  final user =
      FirebaseFirestore.instance.collection('Users').doc(currentUser!.uid);
  final userData = await user.get();
  final walletMap = userData.data();
  if (walletMap!.containsKey('Wallet')) {
    return walletMap['Wallet'];
  } else {
    return 0;
  }
}
