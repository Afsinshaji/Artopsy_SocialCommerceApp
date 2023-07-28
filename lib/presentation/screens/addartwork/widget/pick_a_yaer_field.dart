import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/constants/constants.dart';
import '../screen_addartwork.dart';

class PickYear extends StatefulWidget {
  const PickYear({super.key, required this.width});
  final double width;

  @override
  State<PickYear> createState() => PickYearState();
}

class PickYearState extends State<PickYear> {
  var selectedtime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select year Artwork Created',
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
            Container(
              width: widget.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: kWhiteColor)),
              child: Text(
                selectedtime.year.toString(),
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 16,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Select Year"),
              content: SizedBox(
                width: 300,
                height: 300,
                child: YearPicker(
                  firstDate: DateTime(DateTime.now().year - 1000, 1),
                  lastDate: DateTime(DateTime.now().year, 1),
                  initialDate: DateTime.now(),
                  selectedDate: selectedtime,
                  onChanged: (DateTime dateTime) {
                    setState(() {
                      selectedtime = dateTime;
                      AddArtworkScreen.pickedYear.value =
                          selectedtime.year.toString();
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
