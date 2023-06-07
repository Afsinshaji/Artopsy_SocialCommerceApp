import 'package:artopsy/presentation/common_widgets/staggered_gridview_builder.dart';
import 'package:artopsy/presentation/screens/myprofile/widgets/followers_following_card.dart';
import 'package:artopsy/presentation/screens/myprofile/widgets/myprofile_button_row.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../common_widgets/network_image_box.dart';

class MyProfilescreen extends StatelessWidget {
  const MyProfilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  NetworkImageBox(
                      height: size.height / 3,
                      width: size.width,
                      image: artworkImageList[3],
                      borderradius: 0),
                  kHeight100,
                ],
              ),
              const Positioned(
                  top: 210,
                  right: 40,
                  left: 40,
                  child: FollowersFollowingCard()),
              Positioned(
                top: 160,
                right: 0,
                left: 0,
                child: CircleAvatar(
                    radius: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        'https://www.wilsoncenter.org/sites/default/files/styles/large/public/media/images/person/james-person-1.jpg',
                      ),
                    )),
              ),
              const Positioned(
                  top: 320, right: 80, left: 80, child: MyProfileButtonsRow()),
            ],
          ),
          // kHeight50,
          const StaggeredGridViewBuilder(),
        ],
      ),
    );
  }
}
