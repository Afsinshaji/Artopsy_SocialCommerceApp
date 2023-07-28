import 'package:artopsy/application/order/order_bloc.dart';
import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/presentation/common_widgets/alert_box.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/users/all_users/all_users_bloc.dart';
import '../../../application/artwork/post_artwork/post_artwork_bloc.dart';
import '../../../application/sales/sales_bloc.dart';
import '../../../core/colors/colors.dart';

import '../../../domain/models/artwork_details.dart';
import '../../../domain/models/user_profile.dart';
import '../../common_widgets/sign_buttton.dart';
import '../../common_widgets/sliver_appbar.dart';
import '../chat/screen_each_chat.dart';
import '../delivery_address/screen_add_delivery_address.dart';

class EachOrderScreen extends StatelessWidget {
  const EachOrderScreen(
      {super.key,
      required this.artwork,
      required this.orderStatus,
      required this.orderId,
      required this.deliveryAddress});
  final ArtworkDetails artwork;
  final String orderStatus;
  final String orderId;
  final Map deliveryAddress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AllUsersBloc>(context).add(const AllUsersEvent.readingAllUsers());
    });
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverPersistentHeader(
        pinned: true,
        floating: true,
        delegate: SilverCommonAppbar(
          onLeadingArrowPressed: () {
            Navigator.pop(context);
          },
          actions: [],
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            kHeight30,
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'OrderId - $orderId',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .1,
                    fontSize: 14,
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(

                children: [
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          '${artwork.title},',
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              letterSpacing: .1,
                              fontSize: 18,
                              color: kBlackColor,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'by ${artwork.artist}',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .1,
                            fontSize: 18,
                            color: kBlackColor,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    ],
                  ),
                  kWidth20,
                  Container(
                    width: 170,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(artwork.imageUrl),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 80,
                    child: Text(
                      'Delivery Address',
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          letterSpacing: .1,
                          fontSize: 16,
                          color: kBlackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                kWidth50,
                kWidth50,
                SizedBox(
                  width: 180,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShoppingAddressText(
                            details: deliveryAddress['name'],
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        ShoppingAddressText( fontWeight: FontWeight.w600,
                            details: deliveryAddress['address'], maxLines: 3),
                        ShoppingAddressText( fontWeight: FontWeight.w600,
                            details: deliveryAddress['district']),
                        ShoppingAddressText( fontWeight: FontWeight.w600, details: deliveryAddress['state']),
                        ShoppingAddressText( fontWeight: FontWeight.w600,
                            details: deliveryAddress['pincode']),
                        Row(children: [
                          const ShoppingAddressText( 
                             fontWeight: FontWeight.w600,
                            details: 'Mobile :'),
                          ShoppingAddressText(
                              fontWeight: FontWeight.w600,
                              details: deliveryAddress['phoneNumber']),
                        ]),
                        kHeight30,
                      ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              
              child: Row(
             //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .1,
                        fontSize: 20,
                        color: kBlackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),kWidth100,kWidth30,
                    Text(
                    '₹ ${artwork.price}',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .1,
                        fontSize: 20,
                        color: kBlackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
               
                
                children: [
                Text(
                  'Order Status',
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .1,
                      fontSize: 18,
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                kWidth60,
                Text(
                  orderStatus,
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      letterSpacing: .1,
                      fontSize: 18,
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: orderStatus != 'Delivered'
                  ? orderStatus == 'Returning' || orderStatus == 'Refunded'
                      ? Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Text(
                                'Report to the Artist...   -',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    letterSpacing: .1,
                                    fontSize: 20,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              kWidth20,
                              BlocBuilder<AllUsersBloc, AllUsersState>(
                                  builder: (context, allUserState) {
                                List<UserProfile> allUsers = [];
                                dynamic peerUser = [];
                                if (allUserState is displayAllUsers) {
                                  allUsers = allUserState.completeUserList;
                                  peerUser = allUsers
                                      .where((element) =>
                                          element.userId == artwork.userId)
                                      .toList();
                                }
                                return IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) =>
                                                EachChatScreen(
                                                    peerId: artwork.userId,
                                                    peerUser: peerUser[0]),
                                          ));
                                    },
                                    icon: const Icon(
                                      Icons.chat,
                                      color: kredColor,
                                      size: 35,
                                    ));
                              })
                            ],
                          ),
                        )
                      : SignButton(
                          backGroundColor: kredColor,
                          changeColor: kBlackColor.withOpacity(0.4),
                          textColor: kWhiteColor,
                          onTap: () {
                            alertBox(context,
                                'Do you Really want to cancel this Artwork ?',
                                () {
                              BlocProvider.of<OrderBloc>(context).add(
                                  OrderEvent.cancelorder(
                                      artwork: artwork, orderId: orderId));

                              BlocProvider.of<PostArtworkBloc>(context).add(
                                  PostArtworkEvent.issold(
                                      artwork: artwork, isSold: false));
                              Navigator.pop(context);
                              Navigator.pop(context);
                              // Navigator.pushReplacement(
                              //     context,
                              //     CupertinoPageRoute(
                              //       builder: (context) => const MyOrdersScreen(),
                              //     ));
                            });
                          },
                          width: size.width * .6,
                          text: 'Cancel Artwork',
                        )
                  : SignButton(
                      backGroundColor: kredColor,
                      changeColor: kBlackColor.withOpacity(0.4),
                      textColor: kWhiteColor,
                      onTap: () {
                        alertBox(context,
                            'Do you Really want to return this Artwork ?', () {
                          BlocProvider.of<SalesBloc>(context).add(
                              SalesEvent.changeorderStatus(
                                  status: 'Returning',
                                  artworkId: artwork.artworkId,
                                  orderedUserId:
                                      FirebaseAuth.instance.currentUser!.uid,
                                  orderId: orderId));
                                    BlocProvider.of<PostArtworkBloc>(context).add(
                                  PostArtworkEvent.issold(
                                      artwork: artwork, isSold: false));
                          BlocProvider.of<OrderBloc>(context)
                              .add(const OrderEvent.readorder());
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        });
                      },
                      width: size.width * .6,
                      text: 'Return Artwork',
                    ),
            ),
          ],
        ),
      ),
    ]));
  }
}
