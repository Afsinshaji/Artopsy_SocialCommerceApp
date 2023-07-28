import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/list/list.dart';
import '../../common_widgets/sign_buttton.dart';
import '../../common_widgets/sliver_appbar.dart';
import '../addartwork/widget/artwork_details_buttton_row.dart';
import '../search/screen_search.dart';

class SearchFilterScreen extends StatelessWidget {
  const SearchFilterScreen({
    super.key,
    required this.valueNotifierList,
  });
  final List<ValueNotifier<String>> valueNotifierList;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlackColor,
      bottomNavigationBar: SignButton(
          backGroundColor: kBlackColor,
          changeColor: kBlackColor.withOpacity(0.4),
          textColor: kWhiteColor,
          onTap: () {
            Navigator.of(context).pushReplacement(CupertinoPageRoute(
              builder: (context) => const ScreenSearch(),
            ));
          },
          width: size.width,
          text: 'Apply'),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SilverCommonAppbar(
                title:'Filters',
                  onLeadingArrowPressed: () {}, actions: [])),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: List.generate(filterList.length, (index) {
                  return ArtworkDetailsButtonRow(
                      items: filterItemList[index],
                      detailName: filterList[index],
                      selectedValue: filterItemList[index][0],
                      selectedCategory: valueNotifierList[index]);
                }),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
