import 'dart:developer';

import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/domain/models/user_profile.dart';
import 'package:artopsy/presentation/screens/artwork/screen_image_zoom.dart';
import 'package:artopsy/presentation/screens/cart/mycart/screen_my_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

import '../../../application/favourites/favourites_bloc.dart';
import '../../../application/my_cart/my_cart_bloc.dart';
import '../../../application/users/visiting_user/visiting_user_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../core/list/list.dart';
import '../../../domain/models/artwork_details.dart';
import '../../common_widgets/bottom_sheet.dart';
import '../../common_widgets/circular_profile_picture.dart';
import '../cart/delivery_address/sreen_delivery_address.dart';
import '../search/widget/artist_list_view.dart';
import '../visitingprofile/screen_visiting_profile.dart';

class ArtworkScreen extends StatelessWidget {
  const ArtworkScreen({
    super.key,
    required this.artwork,
    this.imageHeight = 0.0,
    this.isFromMyProfile = false,
  });
  final ArtworkDetails artwork;
  final double imageHeight;
  final bool isFromMyProfile;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    bool isLiked = false;
    dynamic likes = 0;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FavouritesBloc>(context)
          .add(FavouritesEvent.checkfavourites(artwork: artwork));
    });

    double calculatedimageHeight = imageHeight;
    log(imageHeight.toString());
    if (calculatedimageHeight > 200) {
      calculatedimageHeight = 512;
    } else {
      calculatedimageHeight = imageHeight + 100.0;
      if (calculatedimageHeight < 200) {
        calculatedimageHeight = calculatedimageHeight + 150;
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              BlocProvider.of<FavouritesBloc>(context)
                  .add(const FavouritesEvent.readfavourites());
              Navigator.of(context).pop();
            }),
        actions: [
          isFromMyProfile
              ? IconButton(
                  onPressed: () {
                    bottomSheet(context, artwork);
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: kWhiteColor,
                  ))
              : const SizedBox(),
        ],
      ),
      backgroundColor: kBlackColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: imageHeight > 300 ? kBlackColor : kBlackColor,
              elevation: 0,
              centerTitle: false,
              expandedHeight: calculatedimageHeight,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0)),
                        child: Image.network(
                          artwork.imageUrl,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      top: calculatedimageHeight < 150
                          ? calculatedimageHeight + 10
                          : calculatedimageHeight - 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlocBuilder<FavouritesBloc, FavouritesState>(
                            builder: (context, checkState) {
                              log('Checking Here111');

                              if (checkState is isfavOrnot) {
                                log('Checking Here');
                                log(checkState.toString());

                                isLiked = checkState.isFav;
                                likes = checkState.likes;
                                log(likes.toString());
                              }
                              return Row(
                                children: [
                                  IconButons(
                                    icon: Icons.favorite,
                                    buttonColor:
                                        isLiked ? kredColor : kWhiteColor,
                                    onPressed: () {
                                      BlocProvider.of<FavouritesBloc>(context)
                                          .add(FavouritesEvent
                                              .addandremovefavourites(
                                                  artwork: artwork));
                                      isLiked = !isLiked;
                                    },
                                  ),
                                  // Text('$likes',style: const TextStyle(color: kWhiteColor),),
                                ],
                              );
                            },
                          ),
                          IconButons(
                            icon: Icons.share_rounded,
                            onPressed: () {
                              Share.share(artwork.imageUrl);
                            },
                          ),
                          IconButons(
                            icon: Icons.zoom_in_rounded,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => ImageZoomScreen(
                                        imageUrl: artwork.imageUrl),
                                  ));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // floating: true,
              // pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: kBlackColor, blurRadius: 3)
                        ],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: kWhiteColor.withAlpha(245)),
                    child: Column(
                      children: [
                        kHeight30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                ArtworkDetailsText(
                                  details: "${artwork.title},",
                                  maxLines: 3,
                                  fontSize: 20,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w800,
                                ),
                                kHeight,
                                ArtworkDetailsText(
                                  details: "${artwork.artist},",
                                  fontSize: 18,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                                kHeight,
                                ArtworkDetailsText(
                                  details: artwork.yearOfCreation,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor,
                                ),
                              ],
                            ),
                            ArtworkDetailsText(
                              details:
                                  artwork.isSold ? "SOLD" : "₹${artwork.price}",
                              maxLines: 3,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: kBlackColor,
                            ),
                          ],
                        ),
                        kHeight40,
                        const Divider(color: kBlackColor),
                        kHeight30,
                        const ArtworkDetailsText(
                          details: "About the Art",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor,
                        ),
                        kHeight30,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ArtworkDetailsText(
                            textalign: TextAlign.start,
                            details: '"${artwork.desctription}"',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                        kHeight,
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: ArtworkDetailsText(
                            textalign: TextAlign.start,
                            details: '     -by the artist',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: kGreyColor,
                          ),
                        ),
                        kHeight40,
                        ArtDetails(
                          artwork: artwork,
                        ),
                        kHeight30,
                        const Divider(color: kBlackColor),
                        kHeight30,
                        const ArtworkDetailsText(
                          details: "About the Artist",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor,
                        ),
                        kHeight30,
                        AboutArtist(artwork: artwork,isFromMyProfile: isFromMyProfile,),
                        kHeight30,
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: isFromMyProfile || artwork.isSold
          ? const SizedBox()
          : BuyNowAddCartButton(
              artwork: artwork,
            ),
    );
  }
}

class IconButons extends StatelessWidget {
  const IconButons({
    super.key,
    required this.icon,
    required this.onPressed,
    this.buttonColor = kWhiteColor,
  });
  final IconData icon;
  final void Function() onPressed;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 35,
          shadows: const [Shadow(color: kBlackColor, blurRadius: 7)],
          color: buttonColor,
        ),
      ),
    );
  }
}

class AboutArtist extends StatelessWidget {
  const AboutArtist({
    super.key,
    required this.artwork, required this.isFromMyProfile,
  });

  final ArtworkDetails artwork;
  final bool isFromMyProfile;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<VisitingUserBloc>(context).add(
          VisitingUserEvent.showingVisitingUser(
              visitingUserId: artwork.userId));
    });
    return BlocBuilder<VisitingUserBloc, VisitingUserState>(
        builder: (context, userState) {
      if (userState is displayVisitingUser) {
        UserProfile data = userState.userData;

        return ListTile(
          onTap: () {
          if(!isFromMyProfile){  Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) =>
                      VisitingProfileScreen(visitingUserId: artwork.userId),
                ));}
          },
          leading: CirularImage(
              radius: 20, clipRectRadius: 20, imageUrl: data.imageUrl),
          title: Text(data.userName,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  letterSpacing: .5,
                  fontSize: 16,
                  color: kBlackColor,
                  fontWeight: FontWeight.w500,
                ),
              )),
          trailing: FollowFollowingButton(visitingUserId: artwork.userId),
        );
      }
      return const Text('isLoading');
    });
  }
}

class ArtworkDetailsText extends StatelessWidget {
  const ArtworkDetailsText({
    super.key,
    required this.details,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.textalign = TextAlign.center,
    this.maxLines = 1,
  });
  final String? details;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textalign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      details != null ? details! : '',
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

class SliverArtworkImage extends SliverPersistentHeaderDelegate {
  @override
  const SliverArtworkImage({required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          child: Image.network(
            imageUrl,
          ),
        ),
        Positioned(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  size: 35,
                  color: kWhiteColor,
                )))
      ],
    );
  }

  @override
  double get maxExtent => 530;
  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class BuyNowAddCartButton extends StatelessWidget {
  const BuyNowAddCartButton({super.key, required this.artwork});
  final ArtworkDetails artwork;

  @override
  Widget build(BuildContext context) {
    bool isAddedtoCart = false;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MyCartBloc>(context)
          .add(MyCartEvent.isaddedtoCart(artworkId: artwork.artworkId));
    });
    return Container(
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          kWidth20,
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => DeliveryAddressScreen(
                        isBuyNow: true,
                        buyNowArtwork: artwork,
                      ),
                    ));
              },
              style: ButtonStyle(
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
                backgroundColor: const MaterialStatePropertyAll(kBlackColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                shadowColor: MaterialStateProperty.all(kBlackColor),
                elevation: const MaterialStatePropertyAll(8),
              ),
              child: Text(
                'Buy Now',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 18,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
          BlocBuilder<MyCartBloc, MyCartState>(
            builder: (context, cartstate) {
              if (cartstate is isaddedtocart) {
                isAddedtoCart = cartstate.isaddedTocart;
                log('Here.......');
                log(isAddedtoCart.toString());
              }
              return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                  decoration: BoxDecoration(
                      border: Border.all(color: kBlackColor.withOpacity(.3)),
                      color: isAddedtoCart == true
                          ? Colors.greenAccent
                          : kBlackColor.withOpacity(.17),
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    onPressed: () {
                      // addtoCart(artwork);
                      if (!isAddedtoCart) {
                        BlocProvider.of<MyCartBloc>(context)
                            .add(MyCartEvent.addtocart(artwork: artwork));
                        isAddedtoCart = true;
                      } else {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const MyCartScreen(),
                            ));
                      }
                    },
                    icon: isAddedtoCart == true
                        ? const Icon(Icons.shopping_cart_checkout_outlined)
                        : const Icon(Icons.add_shopping_cart_outlined),
                    iconSize: 35,
                  ));
            },
          )
        ],
      ),
    );
  }
}

class ArtDetails extends StatelessWidget {
  const ArtDetails({super.key, required this.artwork});
  final ArtworkDetails artwork;

  @override
  Widget build(BuildContext context) {
    final List<String> artworkList = [
      artwork.title,
      artwork.artist,
      artwork.category,
      '${artwork.depth}X${artwork.height}X${artwork.height}',
    ];
    return Column(
      children: List.generate(
          aboutArtwork.length,
          (index) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        aboutArtwork[index],
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 16,
                            color: kGreyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        artworkList[index],
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 16,
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  kHeight20,
                ],
              )),
    );
  }
}
