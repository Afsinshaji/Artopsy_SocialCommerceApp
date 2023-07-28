import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/presentation/screens/search/screen_search.dart';
import 'package:artopsy/presentation/screens/search/widget/sorting_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../search_filter/screen_search_filter.dart';

class SilverSearchButtonRow extends SliverPersistentHeaderDelegate {
  SilverSearchButtonRow(this.valueNotifierList);
  final List<ValueNotifier<String>> valueNotifierList;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ButtonRow(
      valueNotifierList: valueNotifierList,
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

class ButtonRow extends StatefulWidget {
  const ButtonRow({
    super.key,
    required this.valueNotifierList,
  });
  final List<ValueNotifier<String>> valueNotifierList;

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  bool isArtwork = true;
  bool isArtist = false;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      isArtwork
          ? IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () {
                ScreenSearch.availabilityNotifier.value = '';
                ScreenSearch.categoryNotifier.value = '';
                ScreenSearch.priceNotifier.value = '';
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => SearchFilterScreen(
                        valueNotifierList: widget.valueNotifierList,
                      ),
                    ));
              })
          : kWidth,
      kWidth,
      SerachButton(
        text: 'Artwork',
        isTapped: isArtwork,
        onPressed: () {
          setState(() {
            isArtwork = true;
            isArtist = false;
            ScreenSearch.isSearchingArtist.value = false;
          });
        },
      ),
      kWidth,
      SerachButton(
        text: 'Artist',
        isTapped: isArtist,
        onPressed: () {
          setState(() {
            isArtwork = false;
            isArtist = true;
            ScreenSearch.isSearchingArtist.value = true;
          });
        },
      ),
      kWidth,
      isArtwork
          ? IconButton(
              icon: const Icon(Icons.sort_by_alpha),
              onPressed: () {
                sortingBottomSheet(context);
              })
          : kWidth,
    ]);
  }
}

class SerachButton extends StatefulWidget {
  const SerachButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.isTapped,
      this.isFromProfile = false,
      this.height = 60,
      this.width = 110});
  final String text;
  final Function() onPressed;
  final bool isTapped;
  final bool isFromProfile;
  final double height;
  final double width;

  @override
  State<SerachButton> createState() => _SerachButtonState();
}

class _SerachButtonState extends State<SerachButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(!widget.isFromProfile
            ? (widget.isTapped ? kBlackColor : kWhiteColor)
            : kredColor),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        shadowColor: MaterialStateProperty.all(kBlackColor),
        elevation: const MaterialStatePropertyAll(7),
      ),
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              letterSpacing: .5,
              fontSize: 15,
              color: widget.isTapped ? kWhiteColor : kBlackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
