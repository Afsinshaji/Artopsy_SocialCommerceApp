import 'dart:developer';

import 'package:artopsy/infrastructure/artwork/add_artwork.dart';
import 'package:artopsy/presentation/common_widgets/artwork_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/artwork/complete_artwork/complete_artwork_bloc.dart';
import '../../application/artwork/post_artwork/post_artwork_bloc.dart';
import '../../core/colors/colors.dart';
import '../../domain/models/artwork_details.dart';
import '../screens/homepage/widgets/home_artwork_list_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StaggeredGridViewBuilder extends StatelessWidget {
  const StaggeredGridViewBuilder({
    super.key,
    this.isForHomeScreen = false,
    this.isSearchScreen = false,
    this.isVisitingProfile = false,
    this.searchingart = '',
    this.visitingUserId = '',
    this.isFromMyProfile = false,
    this.searchCategory = '',
  });
  final bool isForHomeScreen;
  final bool isSearchScreen;
  final String searchingart;
  final bool isVisitingProfile;
  final String visitingUserId;
  final bool isFromMyProfile;
  final String searchCategory;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ArtworkDetails>>(
        stream: isSearchScreen
            ? readCompleteArtworkList()
            : isVisitingProfile
                ? readVisitingArtwork(visitingUserId)
                : readArtwork(),
        builder: (context, snapshot) {
          List<ArtworkDetails> artworkList = [];
          if (snapshot.hasData) {
            artworkList = snapshot.data!;
            if (isSearchScreen && searchingart.isNotEmpty) {
              List<ArtworkDetails> displayList = artworkList;
              artworkList = displayList
                  .where((element) => element.title
                      .toLowerCase()
                      .contains(searchingart.toLowerCase()))
                  .toList();
              if (searchCategory.isNotEmpty) {
                artworkList = artworkList
                    .where((element) => element.category == searchCategory)
                    .toList();
              }
            }
          }
          return MasonryGridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            mainAxisSpacing: isForHomeScreen ? 16 : 5,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount:
                isSearchScreen ? artworkList.length + 1 : artworkList.length,
            itemBuilder: (context, index) {
              if (isForHomeScreen) {
                return HomeArtWorkListWidget(
                  index: index,
                );
              } else if (isSearchScreen) {
                if (index == 0) {
                  return Text(
                    searchingart.isEmpty
                        ? 'Search Your Favourite Arts'
                        : 'FOUND ${artworkList.length} RESLUTS',
                    maxLines: 4,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bangers(
                      textStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        letterSpacing: 1.3,
                        fontSize: 40,
                        color: kBlackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                } else {
                  return ArtWorkListWidget(
                    index: index - 1,
                    artworkList: artworkList,
                  );
                }
              } else {
                return ArtWorkListWidget(
                  index: index,
                  artworkList: artworkList,
                  isFromMyProfile: isFromMyProfile,
                );
              }
            },
          );
        });
  }
}

class VisitingProfileStaggeredGridViewBuilder extends StatelessWidget {
  const VisitingProfileStaggeredGridViewBuilder(
      {super.key, required this.visitingUserId});
  final String visitingUserId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PostArtworkBloc>(context).add(
          PostArtworkEvent.readingVisitingProfileArtwork(
              visitingUserId: visitingUserId));
    });
    return BlocBuilder<PostArtworkBloc, PostArtworkState>(
      builder: (context, state) {
        List<ArtworkDetails> artworkList = [];

        if (state is displayVisitingArtwork) {
          log('bloooocing');
          log(state.artworkList.toString());
          artworkList = state.artworkList;
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
        return MasonryGridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            mainAxisSpacing: 5,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: artworkList.length,
            itemBuilder: (context, index) {
              // return BlocBuilder<FavouritesBloc, FavouritesState>(
              // builder: (context, state) {
              return ArtWorkListWidget(
                index: index,
                artworkList: artworkList,
                isFromMyProfile: false,

                //   );
                // },
              );
            });
      },
    );
  }
}

class SearchScreenStaggeredGridViewBuilder extends StatelessWidget {
  const SearchScreenStaggeredGridViewBuilder({
    super.key,
    required this.searchCategory,
    required this.searchingart,
    required this.searchPrice,
    required this.searchAvailability,
  });
  final String searchCategory;
  final String searchingart;
  final String searchPrice;
  final String searchAvailability;
  @override
  Widget build(BuildContext context) {
   
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CompleteArtworkBloc>(context).add(
           const CompleteArtworkEvent.readingCompletePostedArtwork(
              sortingValue: 0));
    });
    return BlocBuilder<CompleteArtworkBloc, CompleteArtworkState>(
      builder: (context, state) {
        List<ArtworkDetails> artworkList = [];
        log('rebuild');

        if (state is displayingCompleteArtwork) {
          artworkList = state.artworkList;
          if (state.isLoading) {
            return const SpinKitChasingDots(
              color: kBlackColor,
            );
          } else if (state.isError) {
            const Center(
              child: Text('Error while Getting data'),
            );
          } else if (state.artworkList.isEmpty) {
            return Center(
              child: Image.network(
                'https://img.freepik.com/free-vector/seo-concept-illustration_114360-5846.jpg?w=740&t=st=1689836617~exp=1689837217~hmac=0dad4ad0972ec45edcd6d2045a257692929b20e6041d865c29b721738797812b',
              ),
            );
          }
          List<ArtworkDetails> displayList = state.artworkList;
          if (searchingart.isNotEmpty) {
            artworkList = displayList
                .where((element) => element.title
                    .toLowerCase()
                    .contains(searchingart.toLowerCase()))
                .toList();
          }
          if (searchCategory.isNotEmpty && searchCategory != 'All') {
            artworkList = artworkList
                .where((element) => element.category == searchCategory)
                .toList();
          }

          if (searchPrice.isNotEmpty && searchPrice != 'All') {
            if (searchPrice == "< ₹1000") {
              artworkList = artworkList
                  .where((element) => int.parse(element.price) < 1000)
                  .toList();
            } else if (searchPrice == "₹1000 - ₹10000") {
              artworkList = artworkList
                  .where((element) =>
                      int.parse(element.price) < 10000 &&
                      int.parse(element.price) > 1000)
                  .toList();
            } else if (searchPrice == "> ₹10000") {
              artworkList = artworkList
                  .where((element) => int.parse(element.price) > 10000)
                  .toList();
            }
          }
          if (searchAvailability.isNotEmpty && searchPrice != 'All') {
            if (searchAvailability == 'Sold') {
              artworkList = artworkList
                  .where((element) => element.isSold == true)
                  .toList();
            } else if (searchAvailability == 'Not Yet Sold') {
              artworkList = artworkList
                  .where((element) => element.isSold == false)
                  .toList();
            }
          }
          if (state.sortingValue == 1) {
            log('sorting 1');
            List<ArtworkDetails> sortList = List.from(artworkList);
            sortList.sort(
              (a, b) => int.parse(a.price).compareTo(int.parse(b.price)),
            );
          
            artworkList = sortList;
          } else if (state.sortingValue == 2) {
            log('sorting 2');
            List<ArtworkDetails> sortList = List.from(artworkList);
            sortList.sort(
              (a, b) => int.parse(a.price).compareTo(int.parse(b.price)),
            );
         
            artworkList = sortList.reversed.toList();
          } else if (state.sortingValue == 3) {
          } else if (state.sortingValue == 4) {}
        }
        return MasonryGridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            mainAxisSpacing: 5,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: artworkList.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Text(
                  searchingart.isEmpty
                      ? 'Search Your Favourite Arts'
                      : 'FOUND ${artworkList.length} RESLUTS',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bangers(
                    textStyle: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      letterSpacing: 1.3,
                      fontSize: 40,
                      color: kBlackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                );
              } else {
                if (artworkList.isEmpty) {
                  return Center(
                    child: Image.network(
                      'https://img.freepik.com/free-vector/seo-concept-illustration_114360-5846.jpg?w=740&t=st=1689836617~exp=1689837217~hmac=0dad4ad0972ec45edcd6d2045a257692929b20e6041d865c29b721738797812b',
                    ),
                  );
                }
                return ArtWorkListWidget(
                  index: index - 1,
                  artworkList: artworkList,
                );
              }
            });
      },
    );
  }
}

class MyProfileStaggeredGridViewBuilder extends StatelessWidget {
  const MyProfileStaggeredGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PostArtworkBloc>(context)
          .add(const PostArtworkEvent.readingPostedArtwork());
    });
    return BlocBuilder<PostArtworkBloc, PostArtworkState>(
      builder: (context, state) {
        List<ArtworkDetails> artworkList = [];
        if(state is postArtworkinitial || state is displayCompleteArtwork ){
               BlocProvider.of<PostArtworkBloc>(context)
          .add(const PostArtworkEvent.readingPostedArtwork());
        }
        if (state is displayArtwork) {
          log('bloooocing');
          log(state.artworkList.toString());
          artworkList = state.artworkList;
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
        return MasonryGridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            mainAxisSpacing: 5,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: artworkList.length,
            itemBuilder: (context, index) {
              // return BlocBuilder<FavouritesBloc, FavouritesState>(
              // builder: (context, state) {
              return ArtWorkListWidget(
                index: index,
                artworkList: artworkList,
                isFromMyProfile: true,
                //   );
                // },
              );
            });
      },
    );
  }
}

//   Example

class HomeExampleScreenStaggeredGridViewBuilder extends StatelessWidget {
  const HomeExampleScreenStaggeredGridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CompleteArtworkBloc>(context).add(
          const CompleteArtworkEvent.readingCompletePostedArtwork(
              sortingValue: 0));
    });
    return BlocBuilder<CompleteArtworkBloc, CompleteArtworkState>(
      builder: (context, state) {
        List<ArtworkDetails> artworkList = [];
        log('rebuild');
        if (state is displayingCompleteArtwork) {
          artworkList = state.artworkList;

          if (state.isLoading) {
            return const SpinKitChasingDots(
              color: kBlackColor,
            );
          } else if (state.isError) {
            const Center(
              child: Text('Error while Getting data'),
            );
          } else if (state.artworkList.isEmpty) {
            return Center(
              child: Image.network(
                'https://img.freepik.com/free-vector/artists-painting-abstract-picture-with-paintbrush-oil-paint-work-tiny-persons-drawing-with-digital-tools-flat-vector-illustration-virtual-master-class-online-workshop-creation-concept_74855-21648.jpg?w=740&t=st=1689836107~exp=1689836707~hmac=290d2d1cee23c431091fb36c1ed2cea793d4cf06b8b5ea7691d1f8256e5fbb6f',
              ),
            );
          }
        }

        return MasonryGridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            mainAxisSpacing: 5,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: artworkList.length,
            itemBuilder: (context, index) {
              return ArtWorkListWidget(
                index: index,
                artworkList: artworkList,
              );
            });
      },
    );
  }
}
