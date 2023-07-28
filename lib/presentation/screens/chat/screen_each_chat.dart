import 'dart:developer';

import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/domain/models/chat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../../infrastructure/chat/chat.dart';
import '../../../domain/models/user_profile.dart';
import '../../common_widgets/circular_profile_picture.dart';

// ignore: must_be_immutable
class EachChatScreen extends StatefulWidget {
  const EachChatScreen(
      {super.key, required this.peerId, required this.peerUser});
  final String peerId;
  final UserProfile peerUser;

  @override
  State<EachChatScreen> createState() => _EachChatScreenState();
}

class _EachChatScreenState extends State<EachChatScreen> {
  final TextEditingController messageController = TextEditingController();

  final ScrollController scrollController = ScrollController();

  var currentChatDay = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
        const Duration(milliseconds: 100),
        () {
          if (scrollController.hasClients) {
            scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 1),
                curve: Curves.easeOut);
            log('oiii');
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlackColor,
        title: Row(
          children: [
            CirularImage(
              clipRectRadius: 20,
              imageUrl: widget.peerUser.imageUrl,
              radius: 20,
            ),
            kWidth,
            Text(widget.peerUser.userName,
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 19,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ))
          ],
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back_ios,color: kWhiteColor,)),
      ),
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Container(
          color: kWhiteColor,
          width: size.width,
          margin: const EdgeInsets.only(left: 30, bottom: 0),
          padding: const EdgeInsets.only(bottom: 40, top: 10),
          child: Row(
            children: [
              kWidth30,
              Expanded(
                  child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                decoration: BoxDecoration(
                  border: Border.all(color: kBlackColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: messageController,
                  style: const TextStyle(color: kBlackColor),
                  cursorColor: kBlackColor,
                  cursorHeight: 20,
                  decoration: const InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: 'Message',
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                ),
              )),
              IconButton(
                  onPressed: () {
                    if (messageController.text.isNotEmpty) {
                      sendMessage(messageController.text, widget.peerId);
                      messageController.clear();
                       scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 1),
                curve: Curves.slowMiddle);

                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: kBlackColor,
                    size: 37,
                  )),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: 
        //CustomScrollView(slivers: [
          // SliverPersistentHeader(
          //     pinned: true,
          //     floating: true,
          //     delegate: SilverCommonAppbar(
          //         titleWidget: Row(
          //           children: [
          //             CirularImage(
          //               clipRectRadius: 20,
          //               imageUrl: widget.peerUser.imageUrl,
          //               radius: 20,
          //             ),
          //             kWidth,
          //             Text(widget.peerUser.userName,
          //                 style: GoogleFonts.lora(
          //                   textStyle: const TextStyle(
          //                     letterSpacing: .5,
          //                     fontSize: 19,
          //                     color: kBlackColor,
          //                     fontWeight: FontWeight.w500,
          //                   ),
          //                 ))
          //           ],
          //         ),
          //         onLeadingArrowPressed: () {},
          //         actions: [],
          //         title: '')),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, i) {
              //  return 
                StreamBuilder(
                  stream: recievedMessage(widget.peerId),
                  builder: (context, snapshot) {
                    final List<Chat> chatList = [];
                    if (snapshot.hasData) {
                      final data = snapshot.data;
                      if (data!.data() == null) {
                        return Center(
                          child: Image.network(
                            'https://img.freepik.com/free-vector/texting-concept-illustration_114360-1687.jpg?w=740&t=st=1689835825~exp=1689836425~hmac=2316806e0a3935cdcaacaadd027059a88ad977e8a22f5ed8bb10f803da92fa0b',
                          ),
                        );
                      }
                      final map = data.data() as Map<String, dynamic>;
      
                      map.forEach((key, value) {
                        chatList.add(Chat.fromJson(value));
                      });
                      chatList.sort((a, b) => a.timeStamp.compareTo(b.timeStamp));
                    }
      
                    return ListView.builder(
                        //reverse: true,
                        controller: scrollController,
                        // dragStartBehavior: DragStartBehavior.down,
                        itemCount: chatList.length+1,
                        // physics: const NeverScrollableScrollPhysics(),
                        // shrinkWrap: true,
                        itemBuilder: (context, index) {
                          log('hi');

                          if(index == chatList.length){
                            return const Column(children:[
                              kHeight50, kHeight30
                            ]);
                          }
                          final timeStamp = chatList[index].timeStamp;
                          final dateTime =
                              DateTime.fromMillisecondsSinceEpoch(
                                  int.parse(timeStamp));
      
                          if (index == 0) {
                            currentChatDay = dateTime.day;
                          }
                          int hour = dateTime.hour;
                          final minute = dateTime.minute;
                          if (hour > 12) {
                            hour = hour - 12;
                          }
      
                          bool isMyMessage = true;
                          if (chatList[index].chatFromId == widget.peerId) {
                            isMyMessage = false;
                          }
                          return Column(
                            children: [
                              // index == 0 || currentChatDay != day
                              //     ? const Text('')
                              //     : const SizedBox(),
                              chatDay(index, currentChatDay, dateTime),
                              Align(
                                alignment: isMyMessage
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    width: size.width * 0.6,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20),
                                        color: isMyMessage
                                            ? Colors.green
                                            : kGreyColor),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          chatList[index].message,
                                          style: GoogleFonts.lora(
                                            textStyle: const TextStyle(
                                              letterSpacing: .5,
                                              fontSize: 16,
                                              color: kBlackColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                              minute < 10
                                                  ? '$hour:0$minute'
                                                  : '$hour:$minute',
                                              textAlign: TextAlign.end,
                                              style: GoogleFonts.lora(
                                                textStyle: const TextStyle(
                                                  letterSpacing: .5,
                                                  fontSize: 11,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                )
        //       },
        //       childCount: 1,
        //     ),
        //   ),
        //   SliverList(delegate: SliverChildListDelegate([kHeight50, kHeight30]))
        // ]),
      ),
    );
  }

  Widget chatDay(int index, int currenChatDay, DateTime dateTime) {
    if (index == 0 || currenChatDay != dateTime.day) {
      currentChatDay = dateTime.day;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            const Expanded(
                child: Divider(
              color: kBlackColor,
              thickness: .2,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${dateTime.day}/${dateTime.month}',
                    style: const TextStyle(fontSize: 11),
                  )),
            ),
            const Expanded(
                child: Divider(
              thickness: .2,
              color: kBlackColor,
            )),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
