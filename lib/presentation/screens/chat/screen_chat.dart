import 'dart:developer';

import 'package:artopsy/domain/models/chat.dart';
import 'package:artopsy/presentation/common_widgets/circular_profile_picture.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../../infrastructure/users/add_user_name.dart';
import '../../../infrastructure/chat/chat.dart';
import '../../../domain/models/user_profile.dart';
import '../../common_widgets/sliver_appbar.dart';
import 'screen_each_chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate: SilverCommonAppbar(
              onLeadingArrowPressed: () {
                Navigator.pop(context);
              },
              actions: [],
              title: 'Chat Screen')),
      SliverList(
          delegate: SliverChildListDelegate([
        StreamBuilder(
            stream: totalChatIds(),
            builder: (context, snapshot) {
              final currentUser = FirebaseAuth.instance.currentUser;
              final currentUserId = currentUser!.uid;

              List chatGroupIdList = [];
              List unReadMessages = [];
              List<Map<String, String>> chatUserIdList = [];

              if (snapshot.hasData) {
                final snapshotData = snapshot.data!;
                log(snapshotData.docs.toString());

                // snapshotData.metadata;
                for (var doc in snapshotData.docs) {
                  if (doc.id.contains(currentUserId)) {
                    log(chatGroupIdList.toString());
                    chatGroupIdList.add(doc.id);
                    final docDataList = doc.data().values.toList();
                    docDataList.sort(
                        (a, b) => a['timeStamp'].compareTo(b['timeStamp']));
                    final lastChat =
                        Chat.fromJson(docDataList[docDataList.length - 1]);
                    final unreadList = docDataList
                        .where((element) =>
                            element['isMessageReaded'] == false &&
                            element['chatToId'] == currentUserId)
                        .toList();
                    unReadMessages.add(unreadList.length);
                    if (lastChat.chatFromId == currentUserId) {
                      chatUserIdList.add({
                        'id': lastChat.chatToId,
                        'timeStamp': lastChat.timeStamp,
                      });
                    } else {
                      chatUserIdList.add({
                        'id': lastChat.chatFromId,
                        'timeStamp': lastChat.timeStamp,
                      });
                    }
                  }
                }
              }
              log('Before');
              log(chatUserIdList.toString());
              chatUserIdList.sort(
                (a, b) => a['timeStamp']!.compareTo(b['timeStamp']!),
              );
              log('After');
              log(chatUserIdList.toString());
              chatUserIdList = chatUserIdList.reversed.toList();
              unReadMessages = unReadMessages.reversed.toList();

              return StreamBuilder(
                  stream: readAllusers(),
                  builder: (context, allUserSnapshot) {
                    List<UserProfile> userList = [];
                    List<UserProfile> allUsers = [];
                    if (allUserSnapshot.hasData) {
                      allUsers = allUserSnapshot.data!;
                      for (var id in chatUserIdList) {
                        final index = allUsers.indexWhere(
                          (element) => element.userId == id['id'],
                        );
                        userList.add(
                          allUsers[index],
                        );
                      }
                    }
                    if (userList.isEmpty) {
                      return Center(
                        child: Image.network(
                          'https://img.freepik.com/free-vector/email-campaign-concept-illustration_114360-1681.jpg?w=740&t=st=1689835769~exp=1689836369~hmac=47754980232e4ebc1226663b4032ed68559ca441d6df60367a2e0cf6d568f882',
                        ),
                      );
                    }
                    return ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CirularImage(
                              clipRectRadius: 27,
                              imageUrl: userList[index].imageUrl,
                              radius: 27,
                            ),
                            title: Text(userList[index].userName,
                                style: GoogleFonts.lora(
                                  textStyle: const TextStyle(
                                    letterSpacing: .5,
                                    fontSize: 16,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                            trailing: unReadMessages[index] != 0
                                ? CircleAvatar(
                                    radius: 15,
                                    backgroundColor: kBlackColor,
                                    child: Text('${unReadMessages[index]}',
                                        style: GoogleFonts.lora(
                                          textStyle: const TextStyle(
                                            letterSpacing: .5,
                                            fontSize: 13,
                                            color: kWhiteColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )))
                                : null,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EachChatScreen(
                                      peerId: userList[index].userId,
                                      peerUser: userList[index]),
                                ),
                              );
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: chatUserIdList.length);
                  });
            })
      ]))
    ]));
  }
}
