// import 'package:artopsy/services/razorpay/razorpay_api.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

// class RazorPayIntegration {
//   final Razorpay razorPay = Razorpay();
//   initiateRazorPay() {
//     razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
//     razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentOnError);
//     razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
//   }

//   void handlePaymentSuccess(PaymentSuccessResponse response) {}
//   void handlePaymentOnError(PaymentSuccessResponse response) {}
//   void handleExternalWallet(PaymentSuccessResponse response) {}
//   final razorPayKey = 'rzp_test_H3NNoil9hEFXT2';
//   openSession(num amount) {
//     createOrder(amount: amount).then((orderId) {
//       print(orderId);
//       if (orderId.toString().isNotEmpty) {
//         var options = {
//           // Razorpay API Key
//           'key': razorPayKey,
//           // in the smallest
//           // currency sub-unit.
//           'amount': amount,
//           'name': 'Company Name.',
//           // Generate order_id
//           // using Orders API
//           'order_id': orderId,
//           // Order Description to be
//           // shown in razor pay page
//           'description': 'Description for order',
//           // in seconds
//           'timeout': 60,
//           'prefill': {
//             'contact': '9123456789',
//             'email': 'flutterwings304@gmail.com'
//           } // contact number and email id of user
//         };
//         razorPay.open(options);
//       } else {}
//     });
    
//   }

//   createOrder({required num amount}) async {
//     final myData = ApiServices().razorPayApi(amount, 'rcp_id_1');
//     if (myData["status"] == "success") {
//       return myData["body"]["id"];
//     } else {
//       return "";
//     }
//   }
// }
