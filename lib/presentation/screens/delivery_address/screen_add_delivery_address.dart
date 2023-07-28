import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/presentation/common_widgets/alert_box.dart';
import 'package:artopsy/presentation/screens/delivery_address/screen_add_delivery_address_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../bloc/delivery_address/delivery_address_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../infrastructure/delivery_address/delivery_address.dart';
import '../../../domain/models/shopping_address.dart';
import '../../common_widgets/sliver_appbar.dart';

class AddDeliveryScreen extends StatefulWidget {
  const AddDeliveryScreen({super.key});

  @override
  State<AddDeliveryScreen> createState() => _AddDeliveryScreenState();
}

class _AddDeliveryScreenState extends State<AddDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DeliveryAddressBloc>(context)
          .add(const DeliveryAddressEvent.showShoppingAddress());
    });
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SilverCommonAppbar(
                  onLeadingArrowPressed: () {
                    Navigator.of(context).pop();
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
            kHeight20,
            BlocBuilder<DeliveryAddressBloc, DeliveryAddressState>(
              builder: (context, addressState) {
                List<ShoppingAddress> shoppingAddressList = [];
                if (addressState is displayDeliveryAddress) {
                  shoppingAddressList = addressState.addressList;
                }
                return Column(
                  children: [
                    Column(
                        children:
                            List.generate(shoppingAddressList.length, (index) {
                      return Container(
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
                                  details: shoppingAddressList[index].name,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                              ShoppingAddressText(
                                  details: shoppingAddressList[index].address,
                                  maxLines: 3),
                              ShoppingAddressText(
                                  details: shoppingAddressList[index].district),
                              ShoppingAddressText(
                                  details: shoppingAddressList[index].state),
                              ShoppingAddressText(
                                  details: shoppingAddressList[index].pincode),
                              Row(children: [
                                const ShoppingAddressText(details: 'Mobile :'),
                                ShoppingAddressText(
                                    fontWeight: FontWeight.w700,
                                    details:
                                        shoppingAddressList[index].phoneNumber),
                              ]),
                              kHeight,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AddressButton(
                                    text: 'delete',
                                    onTap: () {
                                      alertBox(context, 'Delete Address', () {
                                        deleteShoppingAddress(
                                                shoppingAddressList[index])
                                            .then((value) {
                                          setState(() {});
                                          Navigator.pop(context);
                                        });
                                      });
                                    },
                                    padding: const MaterialStatePropertyAll(
                                        EdgeInsets.all(5)),
                                  ),
                                  kWidth20,
                                  AddressButton(
                                    text: 'Edit',
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) =>
                                                AddDeliveryAddressFormScreen(
                                                    isToEdit: true,
                                                    shoppingAddress:
                                                        shoppingAddressList[
                                                            index]),
                                          ));
                                    },
                                    padding: const MaterialStatePropertyAll(
                                        EdgeInsets.all(5)),
                                  )
                                ],
                              )
                            ]),
                      );
                    })),
                    kHeight20,
                    shoppingAddressList.length < 3
                        ? AddressButton(
                            text: 'Add New Delivery Address',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) =>
                                        AddDeliveryAddressFormScreen(),
                                  ));
                            },
                          )
                        : const SizedBox(),
                  ],
                );
              },
            )
          ]))
        ],
      ),
    );
  }
}

class AddressButton extends StatelessWidget {
  const AddressButton({
    super.key,
    required this.text,
    required this.onTap,
    this.padding = const MaterialStatePropertyAll(EdgeInsets.all(25)),
  });
  final String text;
  final Function() onTap;
  final MaterialStateProperty<EdgeInsetsGeometry?>? padding;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: padding,
        backgroundColor: const MaterialStatePropertyAll(kBlackColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: const BorderSide(color: kBlackColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        shadowColor: MaterialStateProperty.all(kBlackColor),
        elevation: const MaterialStatePropertyAll(7),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: GoogleFonts.lora(
          textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class ShoppingAddressText extends StatelessWidget {
  const ShoppingAddressText({
    super.key,
    required this.details,
    this.color = kBlackColor,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.w400,
    this.textalign = TextAlign.center,
    this.maxLines = 1,
  });
  final String details;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textalign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      details,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textalign,
      style: GoogleFonts.lora(
        textStyle: TextStyle(
          letterSpacing: .5,
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
