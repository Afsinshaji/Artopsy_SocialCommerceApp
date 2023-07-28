import 'dart:developer';

import 'package:artopsy/bloc/sales/sales_bloc.dart';
import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/domain/models/artwork_details.dart';
import 'package:artopsy/domain/models/sales.dart';
import 'package:artopsy/presentation/screens/sales_panel/screen_each_sales_report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../bloc/artwork/post_artwork/post_artwork_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../common_widgets/sliver_appbar.dart';

class SalesPanelScreen extends StatelessWidget {
  const SalesPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SalesBloc>(context).add(const SalesEvent.readsales());
    });
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate: SilverCommonAppbar(
                onLeadingArrowPressed: () {
                  Navigator.of(context).pop();
                },
                actions: [])),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                child: Text(
                  'Sales Panel',
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
              BlocBuilder<SalesBloc, SalesState>(
                builder: (context, salesState) {
                  List<Sales> salesList = [];
                  if (salesState is displaySales) {
                    salesList = salesState.salesList;
                      if (salesState.isLoading) {
            return const SpinKitChasingDots(
              color: kBlackColor,
            );
          } else if (salesState.isError) {
            const Center(
              child: Text('Error while Getting data'),
            );
          } 
                    log('heereee');
                    log(salesList.toString());
                    BlocProvider.of<PostArtworkBloc>(context)
                        .add(const PostArtworkEvent.readingPostedArtwork());
                  }
                  return BlocBuilder<PostArtworkBloc, PostArtworkState>(
                    builder: (context, artworkState) {
                      List<ArtworkDetails> artworkList = [];
                      if (artworkState is displayArtwork) {
                        artworkList = artworkState.artworkList;

                      }
                      if (artworkList.isEmpty) {
                        return Center(
                          child: Image.network(
                            'https://img.freepik.com/free-vector/startup-rocket-launch-project-start-setting-business-company-founding-teamwork-cooperation-partnership-businesspeople-cartoon-characters_335657-1191.jpg?w=740&t=st=1689836974~exp=1689837574~hmac=40cb85bd53b36e6794ce95f0d59126cbb08add65edbad03521b65d534f5b7c48',
                          ),
                        );
                      }
                      if (salesList.isEmpty) {
                        return Center(
                          child: Image.network(
                            'https://img.freepik.com/free-vector/startup-rocket-launch-project-start-setting-business-company-founding-teamwork-cooperation-partnership-businesspeople-cartoon-characters_335657-1191.jpg?w=740&t=st=1689836974~exp=1689837574~hmac=40cb85bd53b36e6794ce95f0d59126cbb08add65edbad03521b65d534f5b7c48',
                          ),
                        );
                      }
                      return ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          int artIndex = artworkList.indexWhere((element) =>
                              element.artworkId == salesList[index].artworkId);
                          ArtworkDetails artwork = artworkList[artIndex];

                          return ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => SalesReportScreen(
                                        artwork: artwork,
                                        sale: salesList[index]),
                                  ));
                            },
                            leading:
                                Image(image: NetworkImage(artwork.imageUrl)),
                            title: Text(
                              artwork.title,
                            ),
                            subtitle: Text('₹${artworkList[index].price}'),
                            trailing: Text(salesList[index].orderStatus),
                          );
                        },
                        separatorBuilder: (context, index) => kHeight,
                        itemCount: salesList.length,
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ],
    ));
  }
}
