import 'package:artopsy/core/colors/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../bloc/users/user/user_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../../infrastructure/wallet/wallet.dart';
import '../../common_widgets/alert_box.dart';
import '../../common_widgets/sign_buttton.dart';
import '../../common_widgets/sliver_appbar.dart';
import '../cart/payment_result/screen_payment_result.dart';

class MyWalletScreeen extends StatefulWidget {
  const MyWalletScreeen({super.key});

  @override
  State<MyWalletScreeen> createState() => _MyWalletScreeenState();
}

class _MyWalletScreeenState extends State<MyWalletScreeen> {
  final TextEditingController textEditingController = TextEditingController();
  final razorPay = Razorpay();
  @override
  void initState() {
    razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentOnError);
    razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
    super.initState();
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    Navigator.push(
        context,
        CupertinoDialogRoute(
          context: context,
          builder: (context) => const PaymentResultScreen(),
        ));
  }

  void handlePaymentOnError(PaymentFailureResponse response) {
    //log(response.message.toString());
    alertSnackbar(context, 'Failure');
  }

  void handleExternalWallet(ExternalWalletResponse response) {}

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UserBloc>(context).add(const UserEvent.showingUser());
    });
    final Size size = MediaQuery.of(context).size;
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
          delegate: SliverChildListDelegate([
        kHeight30,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 50),
          child: Text(
            'My Wallet',
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
        Center(
          child: Stack(
            children: [
              Container(
                width: size.width * 0.9,
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.transparent,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 55,
                child: Container(
                  width: size.width * 0.6,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 38,
                child: Container(
                  width: size.width * 0.7,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kGreyColor,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 50,
                child: Container(
                  width: size.width * 0.8,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kBlackColor,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        kHeight30,
                        BlocBuilder<UserBloc, UserState>(
                            // future: showUser(),
                            builder: (context, userState) {
                          String name = '';
                          if (userState is displayUser) {
                            name = userState.userData.userName;
                          }
                          return Text(
                            name,
                            style: GoogleFonts.lora(
                              textStyle: const TextStyle(
                                letterSpacing: .5,
                                fontSize: 24,
                                color: kWhiteColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          );
                        }),
                        kHeight20,
                        Text(
                          'Total Balance',
                          style: GoogleFonts.lora(
                            textStyle: const TextStyle(
                              letterSpacing: .5,
                              fontSize: 20,
                              color: kWhiteColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        kHeight20,
                        FutureBuilder(
                            future: readWallet(),
                            builder: (context, snapshot) {
                              dynamic amount = 0;
                              if (snapshot.hasData) {
                                amount = snapshot.data;
                              }
                              return Text(
                                '₹$amount',
                                style: GoogleFonts.lora(
                                  textStyle: const TextStyle(
                                    letterSpacing: .5,
                                    fontSize: 24,
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        kHeight40,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50),
          child: Text(
            'Add to your wallet',
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
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: kGreyColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 10,
              ),
              child: TextField(
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 24,
                    color: kBlackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                controller: textEditingController,
                cursorColor: kBlackColor,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  prefix: Text(
                    '₹  ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  enabled: true,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SignButton(
              backGroundColor: kBlackColor,
              changeColor: kBlackColor.withOpacity(0.4),
              textColor: kWhiteColor,
              onTap: () async {
                // razorpay.open(options);
                // razorpay.openSession(totalPrice);
                if (textEditingController.text.isNotEmpty) {
                  final user = FirebaseAuth.instance.currentUser;
                  Map<String, dynamic> options = {
                    'key': 'rzp_test_UHMMVsaCTOCuSf',
                    'amount': int.parse(textEditingController.text) * 100,
                    'name': 'Artopsy',
                    'timeout': 300,
                    'description': 'Art',
                    'prefill': {'contact': '', 'email': user!.email},
                  };
                  razorPay.open(options);
                }
              },
              width: size.width,
              text: 'Add amount with RazorPay'),
        ),
      ]))
    ]));
  }
}
