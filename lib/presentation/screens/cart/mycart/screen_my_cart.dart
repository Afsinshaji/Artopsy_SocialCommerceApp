import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/presentation/common_widgets/circular_icon_button.dart';
import 'package:artopsy/presentation/common_widgets/sliver_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../application/my_cart/my_cart_bloc.dart';
import '../../../../core/colors/colors.dart';
import '../../../../domain/models/artwork_details.dart';
import '../delivery_address/sreen_delivery_address.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MyCartBloc>(context).add(const MyCartEvent.showcart());
    });
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BlocBuilder<MyCartBloc, MyCartState>(
          builder: (context, cartTotalState) {
        num total = 0;
        int numOfArts = 0;

        if (cartTotalState is displaycart) {
          total = cartTotalState.total;
          numOfArts = cartTotalState.artworklist.length;
        }
        return TotalCheckoutButton(
          width: size.width,
          total: total,
          numOfArts: numOfArts,
        );
      }),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SilverCommonAppbar(
                  onLeadingArrowPressed: () {
                    Navigator.pop(context);
                  },
                  actions: [])),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: Text(
                'My Cart',
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
            BlocBuilder<MyCartBloc, MyCartState>(
                builder: (context, mycartState) {
              List<ArtworkDetails> artworkList = [];
              // if(mycartState is mycartinitial){

              // }
              if (mycartState is displaycart) {
                artworkList = mycartState.artworklist;
              } else {
                return const Text('Add');
              }
              if (artworkList.isEmpty) {
                return Center(
                  child: Image.network(
                    'https://img.freepik.com/free-vector/empty-concept-illustration_114360-1233.jpg?w=740&t=st=1689836176~exp=1689836776~hmac=92fdb049231600cdc3780c6c1d12a7f6db167699bb5f2bf1d463b56f000093f8',
                  ),
                );
              }

              return Column(
                children: List.generate(
                  artworkList.length,
                  (index) => MyCartListItem(
                    price: artworkList[index].price,
                    artName: artworkList[index].title,
                    artist: artworkList[index].artist,
                    imageUrl: artworkList[index].imageUrl,
                    artworkId: artworkList[index].artworkId,
                  ),
                ),
              );
            })
          ]))
        ],
      ),
    );
  }
}

class TotalCheckoutButton extends StatelessWidget {
  const TotalCheckoutButton(
      {super.key,
      required this.width,
      required this.total,
      required this.numOfArts});
  final double width;
  final num total;
  final int numOfArts;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: const EdgeInsets.all(10),
        width: width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
          color: kBlackColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                kWidth30,
                Text('Total',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 18,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                kWidth,
                Text('($numOfArts Items)',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 14,
                        color: kGreyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                kWidth60,
                Text('₹ $total',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 22,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ))
              ],
            ),
            kHeight,
            Row(
              children: [
                kWidth30,
                Text('Proceed to Checkout',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 14,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                kWidth60,
                Container(
                    alignment: Alignment.topCenter,
                    height: 35,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kWhiteColor),
                    child: Center(
                      child: IconButton(
                          alignment: Alignment.topCenter,
                          onPressed: () {
                            if (numOfArts != 0) {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) =>
                                        const DeliveryAddressScreen(
                                            isBuyNow: false),
                                  ));
                            }
                          },
                          icon: const Icon(
                            Icons.arrow_forward_rounded,
                            color: kBlackColor,
                            size: 25,
                          )),
                    ))
              ],
            )
          ],
        ));
  }
}

class MyCartListItem extends StatelessWidget {
  MyCartListItem({
    super.key,
    required this.imageUrl,
    required this.artName,
    required this.artist,
    required this.price,
    required this.artworkId,
  });

  final String imageUrl;
  final String artName;
  final String artist;
  final String price;
  final String artworkId;
  final GlobalKey _backgroundImageKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
      child: AspectRatio(
        aspectRatio: (16 / 9) - .4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  _buildParallaxBacground(context),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: CircularIconButton(
                        icon: Icons.close,
                        iconSize: 15,
                        radius: 15,
                        buttonBackgroundColor: kBlackColor.withOpacity(0.4),
                        iconColor: kWhiteColor,
                        onTap: () {
                          BlocProvider.of<MyCartBloc>(context).add(
                            MyCartEvent.removefromCart(artworkId: artworkId),
                          );
                          // removeFromCart(artworkId);
                        }),
                  ),
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        artName,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 14,
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        artist,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 10,
                            color: kBlackColor45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "₹$price",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 16,
                        color: kBlackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBacground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
          backgroundImageKey: _backgroundImageKey,
          listItemContext: context,
          scrollable: Scrollable.of(context)),
      children: [
        Image.network(
          imageUrl,
          key: _backgroundImageKey,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;
  ParallaxFlowDelegate({
    required this.backgroundImageKey,
    required this.listItemContext,
    required this.scrollable,
  }) : super(repaint: scrollable.position);
  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(width: constraints.maxWidth);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
        (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);
    context.paintChild(0,
        transform:
            Transform.translate(offset: Offset(0.0, childRect.top)).transform);
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

class Parallax extends SingleChildRenderObjectWidget {
  const Parallax({super.key, required Widget background})
      : super(child: background);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderParallax(scrollable: Scrollable.of(context));
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderParallax renderObject) {
    renderObject.scrollable = Scrollable.of(context);
  }
}

class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

class RenderParallax extends RenderBox
    with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
  RenderParallax({
    required ScrollableState scrollable,
  }) : _scrollable = scrollable;
  ScrollableState _scrollable;
  ScrollableState get scrollable => _scrollable;
  set scrollable(ScrollableState value) {
    if (value != _scrollable) {
      if (attached) {
        _scrollable.position.removeListener(markNeedsLayout);
      }

      _scrollable = value;
      if (attached) {
        _scrollable.position.addListener(markNeedsLayout);
      }
    }
  }

  @override
  void attach(covariant PipelineOwner owner) {
    super.attach(owner);
    _scrollable.position.addListener(markNeedsLayout);
  }

  @override
  void detach() {
    _scrollable.position.removeListener(markNeedsLayout);
    super.detach();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! ParallaxParentData) {
      child.parentData = ParallaxParentData();
    }
  }

  @override
  void performLayout() {
    size = constraints.biggest;
    final background = child!;
    final backgroundImageConstraints =
        BoxConstraints.tightFor(width: size.width);
    background.layout(
      backgroundImageConstraints,
      parentUsesSize: true,
    );
    (background.parentData as ParallaxParentData).offset = Offset.zero;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final viewPortDimension = scrollable.position.viewportDimension;
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final backgroundOffset =
        localToGlobal(size.centerLeft(Offset.zero), ancestor: scrollableBox);
    final scrollFraction =
        (backgroundOffset.dy / viewPortDimension).clamp(0.0, 1.0);
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);
    final background = child!;
    final backgroundSize = background.size;
    final listItemSize = size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);
    context.paintChild(
      background,
      (background.parentData as ParallaxParentData).offset +
          offset +
          Offset(0.0, childRect.top),
    );
  }
}
