import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/presentation/common_widgets/staggered_gridview_builder.dart';
import 'package:artopsy/presentation/screens/myprofile/widgets/appbar.dart';
import 'package:artopsy/presentation/screens/myprofile/widgets/followers_following_card.dart';
import 'package:artopsy/presentation/screens/myprofile/widgets/myprofile_button_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

import '../../../bloc/users/user/user_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../../infrastructure/users/add_user_name.dart';
import '../../common_widgets/circular_profile_picture.dart';
import '../../common_widgets/network_image_box.dart';

class MyProfilescreen extends StatelessWidget {
  const MyProfilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UserBloc>(context).add(const UserEvent.showingUser());
    });
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhiteColor,
      floatingActionButton: Container(
        margin:
            EdgeInsets.only(left: size.width * 0.08, bottom: size.height * .9),
        child: FloatingActionButton.extended(
            // clipBehavior: Clip.antiAlias,

            onPressed: () {},
            label: const MyProfileAppbar()),
      ),
      body: CustomScrollView(
        slivers: [
          // SliverPersistentHeader(
          //   delegate: SilverCommonAppbar(
          //     onLeadingArrowPressed: () async {
          //       await ZoomDrawer.of(context)!.close()!.then((value) {
          //         Navigator.pushAndRemoveUntil(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => const HomePageScreen(),
          //             ),
          //             ModalRoute.withName('/'));
          //       });
          //     },
          //     actions: [
          //       IconButton(
          //           onPressed: () => ZoomDrawer.of(context)!.open(),
          //           icon: const Icon(Icons.menu))
          //     ],
          //   ),
          //   pinned: true,
          //   floating: true,
          // ),
          SliverList(
            delegate: SliverChildListDelegate(
              //shrinkWrap: true,
              [
                kHeight30,
                Stack(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            InstaAssetPicker.pickAssets(
                              context,
                              maxAssets: 1,
                              title: 'Select Background Image',
                              onCompleted: (exportDetails) async {
                                final first = await exportDetails.first;
                                await addUserBackgroundImage(
                                        first.selectedAssets[0])
                                    .then((value) => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MyProfilescreen(),
                                        )));
                              },
                            );
                          },
                          child: BlocBuilder<UserBloc, UserState>(
                              builder: (context, userState) {
                            String backgroundImage = '';
                            if (userState is displayUser) {
                              backgroundImage =
                                  userState.userData.backgroundImage;
                            }
                            return NetworkImageBox(
                              height: size.height / 3,
                              width: size.width,
                              image: backgroundImage.isEmpty
                                  ? 'https://img.freepik.com/free-vector/portfolio-concept-illustration_114360-126.jpg?w=740&t=st=1689837508~exp=1689838108~hmac=e2eb39179757a3a6cf9dfee7697ac1ad37eb81ebbbe284dc4829855021988cdf'
                                  : backgroundImage,
                              borderradius: 0,
                            );
                          }),
                        ),
                        kHeight100,
                      ],
                    ),
                    Positioned(
                        top: 
                        //210,
                        (size.height/3)-58,
                        right: 40,
                        left: 40,
                        child: BlocBuilder<UserBloc, UserState>(
                            builder: (context, userState) {
                          String userName = '';
                          if (userState is displayUser) {
                            userName = userState.userData.userName;
                          }
                          return FollowersFollowingCard(
                            isvisiting: false,
                            userName:userName ,
                          );
                          //  return const Text('isLoading...');
                        })),
                    Positioned(
                      top:
                      // 160,
                       (size.height/3)-108,
                      right: 0,
                      left: 0,
                      child: CircularProfilePicture(onTap: () {}),
                    ),
                     Positioned(
                        top:
                        // 320,
                         (size.height/3)+52,
                        right: 80,
                        left: 80,
                        child: const MyProfileButtonsRow()),
                    //...........................
                    //................................

                    //...........................
                    //................................................
                  ],
                ),
                // kHeight50,
                // const StaggeredGridViewBuilder(isFromMyProfile: true,),
                const MyProfileStaggeredGridViewBuilder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
