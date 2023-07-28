import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DropdownButtton extends StatefulWidget {
  DropdownButtton({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.selectedCategory,
  });

  final List<String> items;
  dynamic selectedValue;
  ValueNotifier selectedCategory;
  @override
  State<DropdownButtton> createState() => _DropdownButttonState();
}

class _DropdownButttonState extends State<DropdownButtton> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: kBlackColor)),
      child: DropdownButton(
        underline: kHeight,
        focusColor: kGreyColor,
        alignment: Alignment.center,
        isExpanded: true,
        dropdownColor: kBlackColor,
        value: widget.selectedValue,
        items: widget.items
            .map<DropdownMenuItem>((value) => DropdownMenuItem(
                  value: value,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kBlackColor,
                        border: Border.all(
                          color: kWhiteColor,
                        ),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Center(
                      child: Text(
                        value,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 14,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
        onChanged: (newvalue) {
          setState(() {
            widget.selectedValue = newvalue;
            widget.selectedCategory.value = newvalue;
          });
        },
      ),
    );
  }
}
