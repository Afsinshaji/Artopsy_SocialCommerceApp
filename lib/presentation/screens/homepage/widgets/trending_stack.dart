import 'dart:developer';

import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/presentation/common_widgets/circular_icon_button.dart';
import 'package:artopsy/presentation/screens/homepage/widgets/trending_home_image.dart';
import 'package:artopsy/presentation/screens/trending/screen_trending.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../application/artwork/complete_artwork/complete_artwork_bloc.dart';
import '../../../../domain/models/artwork_details.dart';

class TrendingStack extends StatelessWidget {
  const TrendingStack({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    List<ArtworkDetails> artworkList = [];
   WidgetsBinding.instance.addPostFrameCallback((_) {
      log('heey');
      BlocProvider.of<CompleteArtworkBloc>(context).add(
          const CompleteArtworkEvent.readingCompletePostedArtwork(
              sortingValue: 0));
 });   

    return BlocBuilder<CompleteArtworkBloc, CompleteArtworkState>(
        builder: (context, state) {
  
      log(state.toString());
      log('here.....');
      if (state is displayingCompleteArtwork) {
        log('there.....');
        artworkList = state.artworkList;
        log(state.artworkList.toString());

        if (state.isLoading) {
          return const SpinKitChasingDots(
            color: kBlackColor,
          );
        } else if (state.isError) {
          const Center(
            child: Text('Error while Getting data'),
          );
        }  
      }
      if (artworkList.isEmpty) {
          return Center(
            child: Image.network(
              'https://img.freepik.com/free-vector/artists-painting-abstract-picture-with-paintbrush-oil-paint-work-tiny-persons-drawing-with-digital-tools-flat-vector-illustration-virtual-master-class-online-workshop-creation-concept_74855-21648.jpg?w=740&t=st=1689836107~exp=1689836707~hmac=290d2d1cee23c431091fb36c1ed2cea793d4cf06b8b5ea7691d1f8256e5fbb6f',
            ),
          );
        }

      return SizedBox(
           height: size.width * 0.8,
      width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: size.width * 0.37,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
            ),
            TrendingHomeimageWidget(
              image: artworkList[2].imageUrl,
              margin: const EdgeInsets.only(left: 170, top: 50),
              angle: 25,
              radius: 15,
              size: Size(size.width * 0.35, size.width * 0.55),
            ),
            TrendingHomeimageWidget(
              image: artworkList[1].imageUrl,
              margin: const EdgeInsets.only(right: 170, top: 50),
              angle: -25,
              radius: 15,
              size: Size(size.width * 0.35, size.width * 0.55),
            ),
            TrendingHomeimageWidget(
              image: artworkList[0].imageUrl,
              margin: const EdgeInsets.only(
                bottom: 35,
                top: 50,
              ),
              radius: 15,
              size: Size(size.width * 0.4, size.width * 0.6),
            ),
            Positioned(
              top: 230,
              child: CircularIconButton(
                  icon: Icons.double_arrow,
                  iconSize: 35,
                  buttonBackgroundColor: kBlackColor.withOpacity(.85),
                  iconColor: kWhiteColor,
                  radius: 30,
                  onTap: () {
                    TrendingScreen.trendingIndex.value = 0;
                    TrendingScreen.trendingValue.value =
                        artworkList[0].imageUrl;
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => TrendingScreen(),
                      ),
                    );
                  }),
            )
          ],
        ),
      );
    });
  }
}
