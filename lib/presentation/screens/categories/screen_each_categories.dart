import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/artwork/complete_artwork/complete_artwork_bloc.dart';
import '../../../domain/models/artwork_details.dart';
import '../../common_widgets/artwork_list_widget.dart';
import '../../common_widgets/sliver_appbar.dart';

class EachCategoryScreen extends StatelessWidget {
  const EachCategoryScreen({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SilverCommonAppbar(
                  onLeadingArrowPressed: () {
                    Navigator.pop(context);
                  },
                  actions: [],
                  title: category)),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              BlocBuilder<CompleteArtworkBloc, CompleteArtworkState>(
                
                  builder: (context, state) {
                    List<ArtworkDetails> artworkList = [];
                    if (state is displayingCompleteArtwork) {
                      final data = state.artworkList;
                      artworkList = data
                          .where((element) => element.category == category)
                          .toList();
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
          )),
        ],
      ),
    );
  }
}
