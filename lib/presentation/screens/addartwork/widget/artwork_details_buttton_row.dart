import 'package:artopsy/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors/colors.dart';
import '../../../common_widgets/dropdown_button.dart';

class ArtworkDetailsButtonRow extends StatelessWidget {
  const ArtworkDetailsButtonRow({
    super.key,
    required this.items,
    required this.detailName,
    required this.selectedValue,
    required this.selectedCategory,
   
  });

  final List<String> items;
  final String detailName;
  final String selectedValue;
  final ValueNotifier<String> selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Text(
            detailName,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                letterSpacing: .5,
                fontSize: 16,
                color: kWhiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          kHeight,
          DropdownButtton(
            items: items,
            selectedValue: selectedValue,
            selectedCategory: selectedCategory,
          ),
        ],
      ),
    );
  }
}
