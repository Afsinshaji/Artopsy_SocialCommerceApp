import 'package:artopsy/presentation/screens/addartwork/screen_addartwork.dart';
import 'package:artopsy/presentation/screens/editprofile/screen_edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

import '../../../../core/colors/colors.dart';
import '../../../common_widgets/circular_icon_button.dart';
import '../../chat/screen_chat.dart';

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
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EditProfileScreen(),
                  ));
            }),
        CircularIconButton(
            icon: Icons.add,
            iconSize: 15,
            buttonBackgroundColor: kredColor,
            iconColor: kWhiteColor,
            onTap: () {
              InstaAssetPicker.pickAssets(
                context,
                maxAssets: 1,
                title: 'Select images',
                onCompleted: (exportDetails) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddArtworkScreen(
                          toEdit: false,
                          exportDetails: exportDetails,
                        ),
                      ));
                },
              );
            }),
        CircularIconButton(
            icon: Icons.chat,
            iconSize: 15,
            buttonBackgroundColor: kredColor,
            iconColor: kWhiteColor,
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const ChatScreen(),
                  ));
            }),
      ],
    );
  }
}

class PickerCropResultScreen extends StatelessWidget {
  const PickerCropResultScreen({super.key, required this.exportDetails});
  final Stream<InstaAssetsExportDetails> exportDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: StreamBuilder<InstaAssetsExportDetails>(
              stream: exportDetails,
              builder: (context, snapshot) {
                final selected = snapshot.data!.selectedAssets;
                snapshot.data!.croppedFiles;
                return Center(
                  child: SizedBox(
                    height: 400,
                    child: Image(image: AssetEntityImageProvider(selected[0])),
                  ),
                );
              })),
    );
  }
}
