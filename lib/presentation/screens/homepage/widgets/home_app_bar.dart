import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/presentation/common_widgets/circular_icon_button.dart';
import 'package:artopsy/presentation/screens/search/screen_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/circular_profile_picture.dart';
import '../../cart/mycart/screen_my_cart.dart';
import '../../myprofile/screen_profile.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kGreyColor,
          ),
          child: Row(
            children: [
              CircularIconButton(
                  icon: Icons.search,
                  iconSize: 30,
                  buttonBackgroundColor: kBlackColor,
                  iconColor: kWhiteColor,
                  onTap: () {}),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              )
            ],
          ),
        ),
        Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: CircularProfilePicture(
              onTap: () {},
            ))
      ],
    );
  }
}

class SilverHomeAppbar extends SliverPersistentHeaderDelegate {
  const SilverHomeAppbar();
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width:size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kGreyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                    child: CircularIconButton(
                        icon: Icons.search,
                        iconSize: 30,
                        buttonBackgroundColor: kBlackColor,
                        iconColor: kWhiteColor,
                        onTap: () {
                          ScreenSearch.isSearchingArtist.value = false;
                          ScreenSearch.availabilityNotifier.value = '';
                          ScreenSearch.categoryNotifier.value = '';
                          ScreenSearch.priceNotifier.value = '';
                          ScreenSearch.searchingArt.value = '';
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const ScreenSearch(),
                              ));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const MyCartScreen(),
                            ));
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        size: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // kHeight
          ],
        ),
        Positioned(
          top: 60,
          left: size.width*0.42,
          child: Center(
            child: CircularProfilePicture(
              radius: 30,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ));
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 130;
  @override
  double get minExtent => 130;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
