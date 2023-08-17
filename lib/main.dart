import 'package:artopsy/application/delivery_address/delivery_address_bloc.dart';
import 'package:artopsy/presentation/screens/splash/screen_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/artwork/complete_artwork/complete_artwork_bloc.dart';
import 'application/artwork/post_artwork/post_artwork_bloc.dart';
import 'application/chat/chat_bloc.dart';

import 'application/delivery_bottom_sheet/delivery_bottom_sheet_bloc.dart';
import 'application/dropdown_button/dropdown_button_bloc.dart';
import 'application/favourites/favourites_bloc.dart';

import 'application/follow_following/check_follow/check_follow_bloc.dart';
import 'application/follow_following/follow/follow_bloc.dart';
import 'application/my_cart/my_cart_bloc.dart';
import 'application/order/order_bloc.dart';

import 'application/sales/sales_bloc.dart';

import 'application/follow_following/visiting_follow/visiting_follow_bloc.dart';
import 'application/users/all_users/all_users_bloc.dart';
import 'application/users/user/user_bloc.dart';
import 'application/users/visiting_user/visiting_user_bloc.dart';
import 'infrastructure/complete_artworks/complete_artwork_repository.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'dart:ui';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Pass all uncaught "fatal" errors from the framework to Crashlytics

  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final DownloadsRepository obj = DownloadsRepository();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PostArtworkBloc(),
        ),
        BlocProvider(
          create: (context) => MyCartBloc(),
        ),
        BlocProvider(
          create: (context) => DeliveryAddressBloc(),
        ),
        BlocProvider(
          create: (context) => DeliveryBottomSheetBloc(),
        ),
        BlocProvider(
          create: (context) => FavouritesBloc(),
        ),
        BlocProvider(
          create: (context) => OrderBloc(),
        ),
        BlocProvider(
          create: (context) => SalesBloc(),
        ),
        BlocProvider(
          create: (context) => DropdownButtonBloc(),
        ),
        BlocProvider(
          create: (context) => CompleteArtworkBloc(obj),
        ),
        BlocProvider(
          create: (context) => FollowBloc(),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => ChatBloc(),
        ),
        BlocProvider(
          create: (context) => AllUsersBloc(),
        ),
        BlocProvider(
          create: (context) => CheckFollowBloc(),
        ),
        BlocProvider(
          create: (context) => VisitingFollowBloc(),
        ),
        BlocProvider(
          create: (context) => VisitingUserBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Artopsy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
