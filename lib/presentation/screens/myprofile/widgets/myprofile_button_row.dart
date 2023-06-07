import 'package:flutter/material.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

import '../../../../core/colors/colors.dart';
import '../../../common_widgets/circular_icon_button.dart';

class MyProfileButtonsRow extends StatelessWidget {
  const MyProfileButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircularIconButton(
            icon: Icons.edit,
            iconSize: 15,
            buttonBackgroundColor: kredColor,
            iconColor: kWhiteColor,
            onTap: () {}),
        CircularIconButton(
            icon: Icons.add,
            iconSize: 15,
            buttonBackgroundColor: kredColor,
            iconColor: kWhiteColor,
            onTap: () {
              InstaAssetPicker.pickAssets(
                context,
                title: 'Select images',
                onCompleted: (exportDetails) {},
              );
            }),
        CircularIconButton(
            icon: Icons.chat,
            iconSize: 15,
            buttonBackgroundColor: kredColor,
            iconColor: kWhiteColor,
            onTap: () {}),
      ],
    );
  }
}

class PickerScreen extends StatefulWidget {
  const PickerScreen({super.key});

  @override
  State<PickerScreen> createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
