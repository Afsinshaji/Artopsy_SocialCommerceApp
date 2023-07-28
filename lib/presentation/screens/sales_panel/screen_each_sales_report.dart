import 'package:artopsy/domain/models/artwork_details.dart';
import 'package:artopsy/domain/models/shopping_address.dart';
import 'package:artopsy/presentation/common_widgets/sign_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/sales/sales_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../infrastructure/wallet/wallet.dart';
import '../../../domain/models/sales.dart';
import '../../common_widgets/alert_box.dart';
import '../../common_widgets/dropdown_button.dart';
import '../../common_widgets/sliver_appbar.dart';
import '../delivery_address/screen_add_delivery_address.dart';

class SalesReportScreen extends StatelessWidget {
  const SalesReportScreen(
      {super.key, required this.sale, required this.artwork});
  static ValueNotifier orderstatusNotifier = ValueNotifier('');
  final Sales sale;
  final ArtworkDetails artwork;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ShoppingAddress deliveryAddress =
        ShoppingAddress.fromJson(sale.orderedAddress);
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate: SilverCommonAppbar(
              onLeadingArrowPressed: () {
                Navigator.of(context).pop();
              },
              actions: [])),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: Row(
                children: [
                  Text(
                    'Sales Report',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .1,
                        fontSize: 22,
                        color: kBlackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  kWidth,
                  sale.orderStatus == 'Cancelled'||  sale.orderStatus=='Refunded'
                      ? IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: kredColor,
                            size: 30,
                          ),
                          onPressed: () {
                            alertBox(context, 'Delete Sales Report', () {
                              BlocProvider.of<SalesBloc>(context).add(
                                  SalesEvent.deletesalesReport(
                                      artwork: artwork, orderId: sale.orderId));
                              Navigator.pop(context);
                              Navigator.pop(context);
                            });
                          },
                        )
                      : const SizedBox()
                ],
              ),
            ),
            kHeight,
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'OrderId - ${sale.orderId}',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .1,
                    fontSize: 14,
                    color: kBlackColor,
                    fontWeight: FontWeight.w400,
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
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
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
                      'Shipping Address',
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          letterSpacing: .1,
                          fontSize: 16,
                          color: kBlackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                kWidth30,
                SizedBox(
                  width: 250,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ShoppingAddressText(
                            details: deliveryAddress.name,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                        ShoppingAddressText(
                            details: deliveryAddress.address, maxLines: 3),
                        ShoppingAddressText(details: deliveryAddress.district),
                        ShoppingAddressText(details: deliveryAddress.state),
                        ShoppingAddressText(details: deliveryAddress.pincode),
                        Row(children: [
                          const ShoppingAddressText(details: 'Mobile :'),
                          ShoppingAddressText(
                              fontWeight: FontWeight.w700,
                              details: deliveryAddress.phoneNumber),
                        ]),
                        kHeight30,
                      ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Total Price - ₹ ${artwork.price}',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .1,
                    fontSize: 20,
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            sale.orderStatus != 'Cancelled' &&
                    sale.orderStatus != 'Delivered' &&
                    sale.orderStatus != 'Returning'&& sale.orderStatus != 'Refunded'
                ? Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: DropdownButtton(
                      items: const ['Processing', 'Shipped', 'Delivered'],
                      selectedCategory: orderstatusNotifier,
                      selectedValue: sale.orderStatus,
                    ),
                  )
                : const SizedBox(),
            sale.orderStatus != 'Cancelled' &&
                    sale.orderStatus != 'Delivered' &&
                    sale.orderStatus != 'Returning'&& sale.orderStatus != 'Refunded'
                ? SignButton(
                    onTap: () {
                      if (orderstatusNotifier.value == 'Delivered') {
                        addToWallet(int.parse(artwork.price));
                      }
                      BlocProvider.of<SalesBloc>(context).add(
                        SalesEvent.changeorderStatus(
                            artworkId: artwork.artworkId,
                            orderId: sale.orderId,
                            orderedUserId: sale.orderedUserId,
                            status: orderstatusNotifier.value),
                      );
                      Navigator.pop(context);
                    },
                    width: size.width * .6,
                    text: 'Make Changes',
                  )
                : Padding(
                    padding: EdgeInsets.only(left: size.width * 0.3, top: 15),
                    child: Text(
                      'Order ${sale.orderStatus}',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          letterSpacing: .1,
                          fontSize: 22,
                          color: sale.orderStatus == 'Cancelled'
                              ? kredColor
                              : kBlackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
            sale.orderStatus == 'Returning'
                ? SignButton(
                    onTap: () {
                      removeFromWallet(int.parse(artwork.price));
                      addToWalletOrderedUser(
                          int.parse(artwork.price), sale.orderedUserId);

                      BlocProvider.of<SalesBloc>(context).add(
                        SalesEvent.changeorderStatus(
                            artworkId: artwork.artworkId,
                            orderId: sale.orderId,
                            orderedUserId: sale.orderedUserId,
                            status: 'Refunded'),
                      );
                      Navigator.pop(context);
                    },
                    width: size.width * .6,
                    text: 'ReFund')
                : const SizedBox()
          ],
        ),
      ),
    ]));
  }
}
