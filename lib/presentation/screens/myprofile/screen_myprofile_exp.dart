

import 'package:artopsy/presentation/screens/myprofile/widgets/followers_following_card.dart';
import 'package:artopsy/presentation/screens/myprofile/widgets/myprofile_button_row.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../common_widgets/network_image_box.dart';
import '../../common_widgets/staggered_gridview_builder.dart';

class MyProfileexp extends StatelessWidget {
  const MyProfileexp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
     
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MyProfileSliverStack(size: size),
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const StaggeredGridViewBuilder();
            },
            childCount: 1,
          ))
        ],
      ),
    );
  }
}

class MyProfileSliverStack extends SliverPersistentHeaderDelegate {
  MyProfileSliverStack({required this.size});

  final Size size;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      
      fit: StackFit.expand,
      
      children: [
        Column(
          children: [
            NetworkImageBox(
                height: size.height / 3,
                width: size.width,
                image: artworkImageList[3],
                borderradius: 0),
            //  kHeight100,
          ],
        ),
        const Positioned(
            top: 210, right: 40, left: 40, child: FollowersFollowingCard(isvisiting: false,userName: '',)),
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
    );
  }

  @override

  double get maxExtent => size.height / 3 + 100;

  @override

  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
