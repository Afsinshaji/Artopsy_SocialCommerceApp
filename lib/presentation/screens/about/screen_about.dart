import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../../core/string/strings.dart';
import '../../common_widgets/sliver_appbar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate: SilverCommonAppbar(
              title: 'About Artopsy',
              onLeadingArrowPressed: () {
                Navigator.of(context).pop();
              },
              actions: [],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(aboutApp,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            letterSpacing: .5,
                            fontSize: 16,
                            color: kBlackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
