import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants/constants.dart';

class SilverCommonAppbar extends SliverPersistentHeaderDelegate {
  SilverCommonAppbar({
    required this.onLeadingArrowPressed,
    required this.actions,
    this.title = '',
    this.titleWidget = kHeight,
  });
  final Function() onLeadingArrowPressed;
  final List<Widget> actions;
  final String title;
  final Widget titleWidget;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // final Size size=    MediaQuery.of(context).size;
    return AppBar(
      title: titleWidget == kHeight ? Text(title) : titleWidget,
      leading: IconButton(
          onPressed: onLeadingArrowPressed,
          icon: const Icon(Icons.arrow_back_ios)),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      )),
      backgroundColor: kGreyColor,
      actions: actions,
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

// class SilverCommonAppbar extends SliverPersistentHeaderDelegate {
//   SilverCommonAppbar({
//     required this.onLeadingArrowPressed,
//     required this.actions,
//     this.title = '',
//     this.titleWidget = kHeight,
//   });
//   final Function() onLeadingArrowPressed;
//   final List<Widget> actions;
//   final String title;
//   final Widget titleWidget;
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     final Size size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height*0.2,
//       width: size.width,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(40),
//           bottomRight: Radius.circular(40),
//         ),
//       ),
//       child: Row(
//         children: [
//           IconButton(
//               onPressed: onLeadingArrowPressed,
//               icon: const Icon(Icons.arrow_back_ios)),
//           kWidth30,
//           titleWidget == kHeight ? Text(title) : titleWidget
//         ],
//       ),
//     );
//   }

//   @override
//   double get maxExtent => 80;

//   @override
//   double get minExtent => 80;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
//       true;
// }
