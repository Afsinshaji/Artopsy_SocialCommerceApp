import 'dart:developer';

import 'package:artopsy/application/order/order_bloc.dart';
import 'package:artopsy/domain/models/order.dart';
import 'package:artopsy/presentation/screens/my_orders/screen_each_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/artwork/complete_artwork/complete_artwork_bloc.dart';
import '../../../application/artwork/post_artwork/post_artwork_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../infrastructure/order/order.dart';
import '../../../domain/models/artwork_details.dart';
import '../../common_widgets/sliver_appbar.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<OrderBloc>(context).add(const OrderEvent.readorder());
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
                  //  Navigator.pop(context);
                },
                actions: [])),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                child: Text(
                  'My Orders',
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
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, orderState) {
                  List<Order> orderList = [];

                  List mapList = [];
                  List orderIdList = [];
                  List addressList = [];
                  if (orderState is displayorder) {
                    orderList = orderState.orderList;
  if (orderState.isLoading) {
            return const SpinKitChasingDots(
              color: kBlackColor,
            );
          } else if (orderState.isError) {
            const Center(
              child: Text('Error while Getting data'),
            );
          } 


                    final Map<String, List<dynamic>> map =
                        takingArtworkList(orderList);
                    addressList = map['orderedAddress']!;
                    mapList = map['mapList']!;
                    orderIdList = map['orderIdList']!;
                    BlocProvider.of<CompleteArtworkBloc>(context).add(
                        const CompleteArtworkEvent.readingCompletePostedArtwork(
                            sortingValue: 0));
                  }
                  if (orderList.isEmpty) {
                    return Center(
                      child: Image.network(
                        'https://img.freepik.com/free-vector/order-now-banner_52683-48697.jpg?w=740&t=st=1689836857~exp=1689837457~hmac=416d3e091828463e55623775cc076d391d0d9ac0be092c7cda03937559a19fa7',
                      ),
                    );
                  }
                  return BlocBuilder<CompleteArtworkBloc, CompleteArtworkState>(
                    builder: (context, artworkState) {
                      List<ArtworkDetails> artworkList = [];
                      if (artworkState is displayingCompleteArtwork) {
                        log('heeeyyy');
                        artworkList = artworkState.artworkList;
                      }
                      if (artworkList.isEmpty) {
                        return const Text('Loading');
                      }

                      return ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          log('loooooookkkk');
                          log(mapList[index].toString());
                          int artIndex = artworkList.indexWhere((element) =>
                              element.artworkId == mapList[index]['artworkId']);
                          ArtworkDetails artwork = artworkList[artIndex];
                          log(mapList.toString());
                          return ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => EachOrderScreen(
                                        deliveryAddress: addressList[index],
                                        artwork: artwork,
                                        orderStatus: mapList[index]
                                            ['orderStatus']!,
                                        orderId: orderIdList[index]),
                                  ));
                            },
                            leading:
                                Image(image: NetworkImage(artwork.imageUrl)),
                            title: Text(
                              artwork.title,
                            ),
                            subtitle: Text('₹${artwork.price}'),
                            trailing: Text(mapList[index]['orderStatus']!),
                          );
                        },
                        separatorBuilder: (context, index) => kHeight,
                        itemCount: mapList.length,
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
