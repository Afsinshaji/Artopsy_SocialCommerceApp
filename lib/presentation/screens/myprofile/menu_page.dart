import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/core/list/list.dart';
import 'package:artopsy/presentation/common_widgets/alert_box.dart';
import 'package:artopsy/presentation/screens/about/screen_about.dart';
import 'package:artopsy/presentation/screens/privacy_policy/screen_privacy_policy.dart';
import 'package:artopsy/presentation/screens/sales_panel/screen_sales_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../services/firebase_services/signin_signout_service.dart';
import '../authentication/login/screen_login.dart';
import '../delivery_address/screen_add_delivery_address.dart';
import '../my_favorites/screen_my_favorites.dart';
import '../my_orders/screen_my_orders.dart';
import '../my_wallet/screen_my_wallet.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kGreyColor.withOpacity(0),
      body: SafeArea(
        child: SizedBox(
          width: size.width * 0.52,
          child: Column(
            children: [
              kHeight100,
              kHeight20,
              MenuItems(
                menuIcons: profileMenuIcons,
                menuItems: profileMenuItems,
                onTap: [
                  () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const MyWalletScreeen(),
                      ),
                    );
                  },
                  () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const MyOrdersScreen(),
                      ),
                    );
                  },
                  () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const MyFavoritesScreen(),
                      ),
                    );
                  },
                  () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const AddDeliveryScreen(),
                      ),
                    );
                  },
                  () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SalesPanelScreen(),
                      ),
                    );
                  }
                ],
              ),
              kHeight20,
              MenuItems(
                menuIcons: settigsMenuIcons,
                menuItems: settigsMenuItems,
                onTap: [
                 
                  () {
                     Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const PrivacyPolicyScreen(),
                      ),
                    );
                  },
                  () {
                      Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const AboutScreen(),
                      ),
                    );
                  },
                ],
              ),
              kHeight20,
              MenuItems(
                menuIcons: const [Icons.logout],
                menuItems: const ['Log Out'],
                onTap: [
                  () {
                    alertBox(context, 'Log Out', () async {
                      await FirebaseSignService().signout();
                      // ignore: use_build_context_synchronously
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                        ModalRoute.withName('/'),
                      );
                    });
                  }
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void empty() {}

class MenuItems extends StatelessWidget {
  const MenuItems({
    super.key,
    required this.menuIcons,
    required this.menuItems,
    this.onTap = const [],
  });
  final List<String> menuItems;
  final List<IconData> menuIcons;
  final List<Function()> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 12,
      ),
      decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: kBlackColor, blurRadius: 8)],
          borderRadius: BorderRadius.circular(20),
          color: kWhiteColor),
      child: Column(
        children: List.generate(menuItems.length, (index) {
          return ListTile(
            //contentPadding: EdgeInsets.all(0),
            onTap: onTap[index],
            horizontalTitleGap: 4,
            minLeadingWidth: 0,
            leading: Card(
                color: kGreyColor,
                child: Icon(
                  menuIcons[index],
                  color: kBlackColor,
                  size: 18,
                )),
            title: Row(
              children: [
                Text(
                  menuItems[index],
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .5,
                      fontSize: 14,
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                // kWidth,
                // const Icon(
                //   Icons.arrow_forward_ios,
                //   color: kBlackColor,
                //   size: 15,
                // ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
