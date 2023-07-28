import 'package:artopsy/infrastructure/order/order.dart';
import 'package:artopsy/presentation/common_widgets/sign_buttton.dart';
import 'package:artopsy/presentation/screens/cart/payment_result/screen_payment_result.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../../bloc/my_cart/my_cart_bloc.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../domain/models/artwork_details.dart';
import '../../../../domain/models/shopping_address.dart';
import '../../../common_widgets/alert_box.dart';
import '../../../common_widgets/sliver_appbar.dart';
import '../../delivery_address/screen_add_delivery_address.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({
    super.key,
    required this.address,
    required this.isBuyNow,
    this.buyNowArtwork,
  });
  final ShoppingAddress address;
  final bool isBuyNow;
  final dynamic buyNowArtwork;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final razorPay = Razorpay();
  List<ArtworkDetails> razorArtworkList = [];
  num razorTotal = 0;
  @override
  void initState() {
    razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentOnError);
    razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
    super.initState();
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    placeOrder(razorArtworkList, razorTotal, widget.address).then((value) {
      BlocProvider.of<MyCartBloc>(context).add(const MyCartEvent.clearcart());
      Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const PaymentResultScreen(),
          ));
    });
  }

  void handlePaymentOnError(PaymentFailureResponse response) {
    //log(response.message.toString());
    alertSnackbar(context, 'Failure');
  }

  void handleExternalWallet(ExternalWalletResponse response) {}
  //final RazorPayIntegration razorpay = RazorPayIntegration();
  @override
  Widget build(BuildContext context) {
    List<ArtworkDetails> artworkList = [];
    int totalNumOfItems = 0;
    num totalPrice = 0;
    final Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MyCartBloc>(context).add(const MyCartEvent.showcart());
    });
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate:
                SilverCommonAppbar(onLeadingArrowPressed: () {
                  Navigator.pop(context);
                }, actions: [])),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            child: Text(
              'Payment',
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
          BlocBuilder<MyCartBloc, MyCartState>(
            builder: (context, mycartState) {
              if (mycartState is displaycart) {
                artworkList = mycartState.artworklist;
                totalNumOfItems = artworkList.length;
                totalPrice = mycartState.total;
              }
              if (widget.isBuyNow) {
                totalPrice = int.parse(widget.buyNowArtwork.price);
                totalNumOfItems = 1;
                artworkList = [widget.buyNowArtwork];
              }
              List<String> details = [
                'Total Price Of Items ($totalNumOfItems)',
                'Shipping Fee',
                'Total Price',
              ];
              List<String> numbers = [
                '₹$totalPrice',
                'Free',
                '₹$totalPrice',
              ];
              razorArtworkList = artworkList;
              razorTotal = totalPrice;
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shadowColor: kBlackColor,
                  elevation: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ShoppingAddressText(
                                details: details[index],
                              ),
                              ShoppingAddressText(
                                fontWeight: FontWeight.w700,
                                details: numbers[index],
                              ),
                            ]),
                      );
                    }),
                  ),
                ),
              );
            },
          ),
          kHeight100,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SignButton(
                backGroundColor: kBlackColor,
                changeColor: kBlackColor.withOpacity(0.4),
                textColor: kWhiteColor,
                onTap: () async {
                  // razorpay.open(options);
                  // razorpay.openSession(totalPrice);
                  final user = FirebaseAuth.instance.currentUser;
                  Map<String, dynamic> options = {
                    'key': 'rzp_test_UHMMVsaCTOCuSf',
                    'amount': totalPrice * 100,
                    'name': 'Artopsy',
                    'timeout': 300,
                    'description': 'Art',
                    'prefill': {'contact': '', 'email': user!.email},
                  };
                  razorPay.open(options);
                },
                width: size.width,
                text: 'Pay with RazorPay'),
          ),
          const Center(child: Text('Or')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SignButton(
              backGroundColor: kBlackColor,
              changeColor: kBlackColor.withOpacity(0.4),
              textColor: kWhiteColor,
              onTap: () {
                placeOrder(artworkList, totalPrice, widget.address)
                    .then((value) {
                  BlocProvider.of<MyCartBloc>(context)
                      .add(const MyCartEvent.clearcart());
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const PaymentResultScreen(),
                      ));
                });
              },
              width: size.width,
              text: 'Cash On Delivery',
            ),
          ),
        ]))
      ],
    ));
  }

  @override
  void dispose() {
    razorPay.clear();
    super.dispose();
  }
}
//rzp_test_UHMMVsaCTOCuSf
//rzp_test_H3NNoil9hEFXT2