import 'package:artopsy/bloc/delivery_address/delivery_address_bloc.dart';
import 'package:artopsy/presentation/screens/splash/screen_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'bloc/artwork/complete_artwork/complete_artwork_bloc.dart';
import 'bloc/artwork/post_artwork/post_artwork_bloc.dart';
import 'bloc/chat/chat_bloc.dart';

import 'bloc/delivery_bottom_sheet/delivery_bottom_sheet_bloc.dart';
import 'bloc/dropdown_button/dropdown_button_bloc.dart';
import 'bloc/favourites/favourites_bloc.dart';

import 'bloc/follow_following/check_follow/check_follow_bloc.dart';
import 'bloc/follow_following/follow/follow_bloc.dart';
import 'bloc/my_cart/my_cart_bloc.dart';
import 'bloc/order/order_bloc.dart';

import 'bloc/sales/sales_bloc.dart';

import 'bloc/follow_following/visiting_follow/visiting_follow_bloc.dart';
import 'bloc/users/all_users/all_users_bloc.dart';
import 'bloc/users/user/user_bloc.dart';
import 'bloc/users/visiting_user/visiting_user_bloc.dart';
import 'infrastructure/complete_artworks/complete_artwork_repository.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
