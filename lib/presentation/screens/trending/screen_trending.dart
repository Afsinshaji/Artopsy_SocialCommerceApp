import 'dart:ui';

import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/presentation/common_widgets/network_image_box.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/artwork/post_artwork/post_artwork_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../../domain/models/artwork_details.dart';
import '../artwork/screen_artwork.dart';

class TrendingScreen extends StatelessWidget {
  TrendingScreen({super.key});
  final CarouselController carouselController = CarouselController();
  static ValueNotifier trendingValue = ValueNotifier(artworkImageList[0]);
  static ValueNotifier trendingIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PostArtworkBloc>(context).add(
          const PostArtworkEvent.readingCompletePostedArtwork(sortingValue: 0));
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: ValueListenableBuilder(
                  valueListenable: trendingValue,
                  builder: (context, value, child) {
                    return Container(
                      height: size.height * 0.4,
                      width: size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(value), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(0)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: kBlackColor.withOpacity(0.3),
                        ),
                      ),
                    );
                  })),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: BlocBuilder<PostArtworkBloc, PostArtworkState>(
                builder: (context, state) {
              List<ArtworkDetails> artworkList = [];
              if (state is displayCompleteArtwork) {
                artworkList = state.artworkList;
                if (artworkList.isEmpty) {
                  return const Text('error');
                }
              }
              if(artworkList.isEmpty){
                return const Text('error');
              }
              return Stack(
                children: [
                  buildBgCircle(),
                  Center(
                    child: CarouselSlider.builder(
                      carouselController: carouselController,
                      itemCount: artworkList.length,
                      itemBuilder: (context, itemIndex, pageViewIndex) {
                        return DoubleBorderImage(
                          imageUrl: artworkList[itemIndex].imageUrl,
                          artwork: artworkList[itemIndex],
                        );
                      },
                      options: CarouselOptions(
                        height: 300,
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.4,
                        viewportFraction: .7,
                        onPageChanged: (index, reason) {
                          TrendingScreen.trendingValue.value =
                              artworkList[index].imageUrl;
                          TrendingScreen.trendingIndex.value = index;
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.7,
                    left: size.width * 0.15,
                    child: ValueListenableBuilder(
                        valueListenable: trendingIndex,
                        builder: (context, value, child) {
                          return SizedBox(
                            width: size.width * 0.7,
                            child: Column(
                              children: [
                                ArtworkDetailsText(
                                  //textalign: TextAlign.start,
                                  details:
                                      '"${artworkList[value].desctription}"',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: kBlackColor,
                                  maxLines: 2,
                                ),
                                kHeight,
                                ArtworkDetailsText(
                                  textalign: TextAlign.start,
                                  details:
                                      '     -by ${artworkList[value].artist}',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: kGreyColor,
                                ),
                                kHeight30,
                                ArtworkDetailsText(
                                  //textalign: TextAlign.start,
                                  details: artworkList[value].title,
                                  fontSize: 34,
                                  fontWeight: FontWeight.w700,
                                  color: kBlackColor,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class TrendingPageView extends StatelessWidget {
  const TrendingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 18,
      itemBuilder: (context, index) {
        return AnimatedOpacity(
          opacity: 1,
          duration: const Duration(milliseconds: 300),
          child: _AnimatedTranslate(
            duration: const Duration(milliseconds: 300),
            offset: const Offset(0, 0),
            child: Center(
                child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 300,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _DoubleBorderImage(index: index),
              ),
            )),
          ),
        );
      },
    );
  }
}

OverflowBox buildBgCircle() {
  const double size = 900;
  return OverflowBox(
    maxWidth: size,
    maxHeight: size,
    child: Transform.translate(
      offset: const Offset(0, size / 2),
      child: Container(
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(size)),
        ),
      ),
    ),
  );
}

class _AnimatedTranslate extends StatelessWidget {
  const _AnimatedTranslate({
    Key? key,
    required this.duration,
    required this.offset,
    required this.child,
  }) : super(key: key);
  final Duration duration;
  final Offset offset;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Offset>(
      tween: Tween(begin: offset, end: offset),
      duration: duration,
      child: child,
      builder: (_, offset, c) => Transform.translate(offset: offset, child: c),
    );
  }
}

class _DoubleBorderImage extends StatelessWidget {
  const _DoubleBorderImage({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) => Container(
        // Add an outer border with the rounded ends.
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: kBlackColor, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(999)),
        ),

        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: ColoredBox(
              color: kGreyColor,
              // child: AppImage(image: NetworkImage(data.imageUrlSmall), fit: BoxFit.cover, scale: 0.5),
              child: GestureDetector(
                child: NetworkImageBox(
                    height: 200.0,
                    width: 200.0,
                    image: artworkImageList[index],
                    borderradius: 0),
              ),
            ),
          ),
        ),
      );
}

class DoubleBorderImage extends StatelessWidget {
  const DoubleBorderImage(
      {Key? key, required this.imageUrl, required this.artwork})
      : super(key: key);
  final String imageUrl;
  final ArtworkDetails artwork;

  @override
  Widget build(BuildContext context) => Container(
        width: 300,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: kBlackColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => ArtworkScreen(artwork: artwork),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imageUrl,
                    )),
              ),
            ),
          ),
        ),
      );
}
