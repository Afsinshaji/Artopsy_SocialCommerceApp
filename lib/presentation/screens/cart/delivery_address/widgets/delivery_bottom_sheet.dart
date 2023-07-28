import 'package:artopsy/application/delivery_bottom_sheet/delivery_bottom_sheet_bloc.dart';
import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/domain/models/shopping_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/delivery_address/delivery_address_bloc.dart';
import '../../../../../core/colors/colors.dart';
import '../../../delivery_address/screen_add_delivery_address.dart';

Future<dynamic> deliveryBottomSheet(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    BlocProvider.of<DeliveryAddressBloc>(context)
        .add(const DeliveryAddressEvent.showShoppingAddress());
  });

  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    backgroundColor: kWhiteColor,
    context: context,
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
            // color: kBlackColor,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            kHeight20,
            BlocBuilder<DeliveryAddressBloc, DeliveryAddressState>(
              builder: (context, state) {
                List<ShoppingAddress> shoppingAddressList = [];
                if (state is displayDeliveryAddress) {
                  shoppingAddressList = state.addressList;
                }
                BlocProvider.of<DeliveryBottomSheetBloc>(context)
                    .add(DeliveryBottomSheetEvent.onSelected(
                  value: shoppingAddressList[0],
                ));

                return BlocBuilder<DeliveryBottomSheetBloc,
                    DeliveryBottomSheetState>(
                  builder: (context, bottomSheetState) {
                    ShoppingAddress? initialValue;
                    if (bottomSheetState is displaySelectedValue) {
                      initialValue = bottomSheetState.address;
                    }
                    return Column(
                      children: List.generate(
                        shoppingAddressList.length,
                        (index) {
                          return RadioListTile(
                            value: shoppingAddressList[index],
                            groupValue: initialValue,
                            onChanged: (value) {
                              // initialValue = value;
                              BlocProvider.of<DeliveryBottomSheetBloc>(context)
                                  .add(DeliveryBottomSheetEvent.onSelected(
                                value: value,
                              ));
                            },
                            title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ShoppingAddressText(
                                      details: shoppingAddressList[index].name,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  ShoppingAddressText(
                                      details:
                                          shoppingAddressList[index].address,
                                      maxLines: 3),
                                  ShoppingAddressText(
                                      details:
                                          shoppingAddressList[index].district),
                                  ShoppingAddressText(
                                      details:
                                          shoppingAddressList[index].state),
                                  ShoppingAddressText(
                                      details:
                                          shoppingAddressList[index].pincode),
                                  Row(children: [
                                    const ShoppingAddressText(
                                        details: 'Mobile :'),
                                    ShoppingAddressText(
                                        fontWeight: FontWeight.w700,
                                        details: shoppingAddressList[index]
                                            .phoneNumber),
                                  ]),
                                ]),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
            kHeight20,
            AddressButton(
                text: 'Add or Edit Address',
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const AddDeliveryScreen(),
                      ));
                })
          ],
        ),
      );
    },
  );
}
