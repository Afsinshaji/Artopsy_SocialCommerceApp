import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../../../core/colors/colors.dart';
import '../../homepage/screen_homepage.dart';

class MyProfileAppbar extends StatelessWidget {
  const MyProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      width: size.width,
      decoration: const BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: IconButton(
                onPressed: () async {
                  await ZoomDrawer.of(context)!.close()!.then((value) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePageScreen(),
                      ),
                      ModalRoute.withName('/'),
                    );
                  });
                },
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: IconButton(
                onPressed: () => ZoomDrawer.of(context)!.open(),
                icon: const Icon(Icons.menu)),
          )
        ],
      ),
    );
  }
}
// AppBar(
          // leading: IconButton(
          //     onPressed: () async {
          //       await ZoomDrawer.of(context)!.close()!.then((value) {
          //         Navigator.pushAndRemoveUntil(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => const HomePageScreen(),
          //             ),
          //             ModalRoute.withName('/'));
          //       });
          //     },
          //     icon: const Icon(Icons.arrow_back_ios)),
//           shape: const RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(40),
          //   bottomRight: Radius.circular(40),
          // )),
//           backgroundColor: kGreyColor,
//           actions: [
            // IconButton(
            //     onPressed: () => ZoomDrawer.of(context)!.open(),
            //     icon: const Icon(Icons.menu))
//           ],
//         ),