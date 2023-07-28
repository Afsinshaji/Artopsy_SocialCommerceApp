import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/users/all_users/all_users_bloc.dart';
import '../../../bloc/follow_following/follow/follow_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../../domain/models/user_profile.dart';
import '../../common_widgets/circular_profile_picture.dart';
import '../../common_widgets/sliver_appbar.dart';
import '../search/widget/artist_list_view.dart';
import '../visitingprofile/screen_visiting_profile.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AllUsersBloc>(context).add(const AllUsersEvent.readingAllUsers());
      BlocProvider.of<FollowBloc>(context)
          .add(const FollowEvent.gettingFollow());
    });
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate: SilverCommonAppbar(
                onLeadingArrowPressed: () {}, actions: [], title: 'Following')),
        SliverList(
          delegate: SliverChildListDelegate([
            BlocBuilder<AllUsersBloc, AllUsersState>(builder: (context, allUserState) {
              List<UserProfile> userList = [];
              List<UserProfile> allUsers = [];
              if (allUserState is displayAllUsers) {
                allUsers = allUserState.completeUserList;
              }
              return BlocBuilder<FollowBloc, FollowState>(
                builder: (context, followState) {
                  if (followState is displayFollow) {
                    List userlist = [];

                    userlist = followState.followingList;

                    for (var user in userlist) {
                      int index = allUsers
                          .indexWhere((element) => element.userId == user);
                      userList.add(allUsers[index]);
                    }

                    return ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          // if (index == 0) {
                          //   return Text(
                          //     searchingart.isEmpty
                          //         ? 'Search You'
                          //         : 'FOUND ${userList.length} RESLUTS',
                          //     maxLines: 1,
                          //     textAlign: TextAlign.center,
                          //     style: GoogleFonts.bangers(
                          //       textStyle: const TextStyle(
                          //         overflow: TextOverflow.ellipsis,
                          //         letterSpacing: 1.3,
                          //         fontSize: 40,
                          //         color: kBlackColor,
                          //         fontWeight: FontWeight.w700,
                          //       ),
                          //     ),
                          //   );
                          // } else {
                          return ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => VisitingProfileScreen(
                                        visitingUserId: userList[index].userId),
                                  ));
                            },
                            leading: CirularImage(
                                radius: 20,
                                clipRectRadius: 20,
                                imageUrl: userList[index].imageUrl),
                            title: Text(userList[index].userName),
                            trailing: FollowFollowingButton(
                                visitingUserId: userList[index].userId),
                          );
                          // }
                        },
                        separatorBuilder: (context, index) => kHeight,
                        itemCount: userList.length);
                  } else {
                    return const Text('Error');
                  }
                },
              );
            }),
          ]),
        ),
      ],
    ));
  }
}
