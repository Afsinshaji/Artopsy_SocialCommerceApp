import 'package:artopsy/bloc/delivery_address/delivery_address_bloc.dart';
import 'package:artopsy/presentation/screens/cart/delivery_address/widgets/delivery_bottom_sheet.dart';
import 'package:artopsy/presentation/screens/cart/payment/screen_payment.dart';
import 'package:artopsy/presentation/screens/delivery_address/screen_add_delivery_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../bloc/delivery_bottom_sheet/delivery_bottom_sheet_bloc.dart';
import '../../../../bloc/my_cart/my_cart_bloc.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../domain/models/shopping_address.dart';
import '../../../common_widgets/sign_buttton.dart';
import '../../../common_widgets/sliver_appbar.dart';
import '../../delivery_address/screen_add_delivery_address_form.dart';

class DeliveryAddressScreen extends StatelessWidget {
  const DeliveryAddressScreen(
      {super.key, this.isBuyNow = false, this.buyNowArtwork = const []});

  final bool isBuyNow;
  final dynamic buyNowArtwork;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DeliveryAddressBloc>(context)
          .add(const DeliveryAddressEvent.showShoppingAddress());
      BlocProvider.of<MyCartBloc>(context).add(const MyCartEvent.showcart());
    });

    return Scaffold(
      bottomNavigationBar:
          BlocBuilder<DeliveryAddressBloc, DeliveryAddressState>(
        builder: (context, addressState) {
          List<ShoppingAddress> shoppingAddressList = [];
          if (addressState is displayDeliveryAddress) {
            shoppingAddressList = addressState.addressList;
            if (shoppingAddressList.isNotEmpty) {
              BlocProvider.of<DeliveryBottomSheetBloc>(context)
                  .add(DeliveryBottomSheetEvent.onSelected(
                value: shoppingAddressList[0],
              ));
            }
          }

          return BlocBuilder<DeliveryBottomSheetBloc, DeliveryBottomSheetState>(
            builder: (context, bottomsheetstate) {
              if (shoppingAddressList.isEmpty) {
                return const Text('Loading.....');
              } else {
                ShoppingAddress value = shoppingAddressList[0];
                if (bottomsheetstate is displaySelectedValue) {
                  value = bottomsheetstate.address!;
                }
                return SignButton(
                    backGroundColor: kBlackColor,
                    changeColor: kBlackColor.withOpacity(0.4),
                    textColor: kWhiteColor,
                    onTap: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => PaymentScreen(
                            address: value,
                            isBuyNow: isBuyNow,
                            buyNowArtwork: buyNowArtwork),
                      ));
                    },
                    width: size.width,
                    text: 'PlaceOrder');
              }
            },
          );
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SilverCommonAppbar(
                  onLeadingArrowPressed: () {
                    Navigator.pop(context);
                  },
                  actions: [])),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: Text(
                'Delivery Address',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .1,
                    fontSize: 22,
                    color: kBlackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            // kHeight20,
            BlocBuilder<DeliveryAddressBloc, DeliveryAddressState>(
              builder: (context, addressState) {
                List<ShoppingAddress> shoppingAddressList = [];
                if (addressState is displayDeliveryAddress) {
                  shoppingAddressList = addressState.addressList;
                  if (shoppingAddressList.isNotEmpty) {
                    BlocProvider.of<DeliveryBottomSheetBloc>(context)
                        .add(DeliveryBottomSheetEvent.onSelected(
                      value: shoppingAddressList[0],
                    ));
                  }
                }

                if (shoppingAddressList.isNotEmpty) {
                  return BlocBuilder<DeliveryBottomSheetBloc,
                      DeliveryBottomSheetState>(
                    builder: (context, bottomsheetstate) {
                      ShoppingAddress value = shoppingAddressList[0];
                      if (bottomsheetstate is displaySelectedValue) {
                        value = bottomsheetstate.address!;
                      }
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: kWhiteColor,
                                boxShadow: const [
                                  BoxShadow(color: kBlackColor, blurRadius: 2)
                                ],
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ShoppingAddressText(
                                      details: value.name,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  ShoppingAddressText(
                                      details: value.address, maxLines: 3),
                                  ShoppingAddressText(details: value.district),
                                  ShoppingAddressText(details: value.state),
                                  ShoppingAddressText(details: value.pincode),
                                  Row(children: [
                                    const ShoppingAddressText(
                                        details: 'Mobile :'),
                                    ShoppingAddressText(
                                        fontWeight: FontWeight.w700,
                                        details: value.phoneNumber),
                                  ]),
                                  kHeight30,
                                  Center(
                                    child: AddressButton(
                                        text: 'Select Another Address',
                                        onTap: () {
                                          deliveryBottomSheet(
                                            context,
                                          );
                                        }),
                                  ),
                                ]),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return SizedBox(
                    width: size.width * 0.5,
                    child: AddressButton(
                        text: 'Add your Address',
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) =>
                                    AddDeliveryAddressFormScreen(),
                              ));
                        }),
                  );
                }
              },
            ),
            kHeight,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
              child: Text(
                'Art Items',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .1,
                    fontSize: 22,
                    color: kBlackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            !isBuyNow
                ? BlocBuilder<MyCartBloc, MyCartState>(
                    builder: (context, cartState) {
                    List artworkList = [];
                    if (cartState is displaycart) {
                      artworkList = cartState.artworklist;
                    }
                    return ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image(
                                image:
                                    NetworkImage(artworkList[index].imageUrl)),
                            title: Text(
                              artworkList[index].title,
                            ),
                            trailing: Text('₹${artworkList[index].price}'),
                          );
                        },
                        separatorBuilder: (context, index) => kHeight,
                        itemCount: artworkList.length);
                  })
                : ListTile(
                    leading: Image(image: NetworkImage(buyNowArtwork.imageUrl)),
                    title: Text(
                      buyNowArtwork.title,
                    ),
                    trailing: Text('₹${buyNowArtwork.price}'),
                  )
          ]))
        ],
      ),
    );
  }
}
