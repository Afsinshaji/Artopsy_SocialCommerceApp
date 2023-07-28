import 'dart:developer';

import 'package:artopsy/bloc/favourites/favourites_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../bloc/artwork/post_artwork/post_artwork_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../domain/models/artwork_details.dart';
import '../../common_widgets/artwork_list_widget.dart';
import '../../common_widgets/sliver_appbar.dart';

class MyFavoritesScreen extends StatelessWidget {
  const MyFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('Fav Building Here....');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FavouritesBloc>(context)
          .add(const FavouritesEvent.readfavourites());
    });
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SilverCommonAppbar(
                  onLeadingArrowPressed: () {
                    BlocProvider.of<PostArtworkBloc>(context)
                        .add(const PostArtworkEvent.readingPostedArtwork());
                    Navigator.pop(context);
                  },
                  actions: [])),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                BlocBuilder<FavouritesBloc, FavouritesState>(
                    builder: (context, favState) {
                  List<ArtworkDetails> artworkList = [];
                  if (favState is isfavOrnot) {
                    BlocProvider.of<FavouritesBloc>(context)
                        .add(const FavouritesEvent.readfavourites());
                  }
                  if (favState is displayfavourites) {
                    artworkList = favState.arworkList;
                      if (favState.isLoading) {
            return const SpinKitChasingDots(
              color: kBlackColor,
            );
          } else if (favState.isError) {
            const Center(
              child: Text('Error while Getting data'),
            );
          }
                  }
                  if (artworkList.isEmpty) {
                    return Center(
                      child: Image.network(
                        'https://img.freepik.com/free-vector/person-addicted-social-media-illustration-theme_52683-32165.jpg?w=740&t=st=1689836742~exp=1689837342~hmac=9dd625cca8554d7e0516435b6423d742d57ea84274f76da55fc052cc5aee08a2',
                      ),
                    );
                  }

                  return GridView.builder(
                    shrinkWrap: true,
                    itemCount: artworkList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: .72,
                            crossAxisSpacing: 6),
                    itemBuilder: (context, index) {
                      return ArtWorkListWidget(
                        isCategoryScreen: true,
                        index: index,
                        artworkList: artworkList,
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
