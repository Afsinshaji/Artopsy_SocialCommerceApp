import 'package:artopsy/domain/models/user_profile.dart';
import 'package:artopsy/presentation/common_widgets/circular_profile_picture.dart';
import 'package:artopsy/presentation/screens/search/widget/artist_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/users/visiting_user/visiting_user_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../common_widgets/circular_icon_button.dart';
import '../../common_widgets/network_image_box.dart';
import '../../common_widgets/staggered_gridview_builder.dart';
import '../chat/screen_each_chat.dart';
import '../myprofile/widgets/followers_following_card.dart';
import '../search/widget/sliver_search_button_row.dart';

class VisitingProfileScreen extends StatelessWidget {
  const VisitingProfileScreen({super.key, required this.visitingUserId});
  final String visitingUserId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<VisitingUserBloc>(context).add(
          VisitingUserEvent.showingVisitingUser(
              visitingUserId: visitingUserId));
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                BlocBuilder<VisitingUserBloc, VisitingUserState>(
                    builder: (context, userState) {
                  if (userState is displayVisitingUser) {
                    UserProfile data = userState.userData;

                    return Stack(
                      children: [
                        Column(
                          children: [
                            NetworkImageBox(
                              height: size.height / 3,
                              width: size.width,
                              image: data.backgroundImage.isEmpty
                                  ? 'https://img.freepik.com/free-vector/portfolio-concept-illustration_114360-126.jpg?w=740&t=st=1689837508~exp=1689838108~hmac=e2eb39179757a3a6cf9dfee7697ac1ad37eb81ebbbe284dc4829855021988cdf'
                                  : data.backgroundImage,
                              borderradius: 0,
                            ),
                            kHeight100,
                          ],
                        ),
                        Positioned(
                            top: 210,
                            right: 40,
                            left: 40,
                            child: FollowersFollowingCard(
                              userName: data.userName,
                              isvisiting: true,
                              visitingUserId: visitingUserId,
                            )),
                        Positioned(
                            top: 160,
                            right: 0,
                            left: 0,
                            child: CircularVisitingProfilePicture(
                              imageUrl: data.imageUrl,
                            )),
                        Positioned(
                          top: 320,
                          right: 60,
                          left: 90,
                          child: Row(
                            children: [
                              FollowFollowingButton(
                                  visitingUserId: visitingUserId),
                              kWidth,
                              SerachButton(
                                isTapped: true,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) => EachChatScreen(
                                            peerUser: data,
                                            peerId: visitingUserId),
                                      ));
                                },
                                isFromProfile: true,
                                text: 'Message',
                                height: 26,
                                width: 80,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 35,
                          left: 20,
                            child: CircularIconButton(
                              radius: 15,
                                icon: Icons.cancel,
                                iconSize: 28,
                                buttonBackgroundColor: kBlackColor,
                                iconColor: kWhiteColor,
                                onTap: () {
                                  Navigator.pop(context);
                                }))
                      ],
                    );
                  } else {
                    return Center(
                      child: Image.network(
                        'https://img.freepik.com/free-vector/artists-painting-abstract-picture-with-paintbrush-oil-paint-work-tiny-persons-drawing-with-digital-tools-flat-vector-illustration-virtual-master-class-online-workshop-creation-concept_74855-21648.jpg?w=740&t=st=1689836107~exp=1689836707~hmac=290d2d1cee23c431091fb36c1ed2cea793d4cf06b8b5ea7691d1f8256e5fbb6f',
                      ),
                    );
                  }
                }),
                // kHeight50,
                // StaggeredGridViewBuilder(
                //   isForHomeScreen: false,
                //   isSearchScreen: false,
                //   isVisitingProfile: true,
                //   visitingUserId: visitingUserId,
                // ),
                VisitingProfileStaggeredGridViewBuilder(
                  visitingUserId: visitingUserId,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
