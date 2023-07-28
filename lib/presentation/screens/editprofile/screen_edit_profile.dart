import 'dart:developer';

import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/infrastructure/users/add_user_name.dart';
import 'package:artopsy/presentation/common_widgets/circular_profile_picture.dart';
import 'package:artopsy/presentation/common_widgets/sign_buttton.dart';
import 'package:artopsy/presentation/screens/myprofile/screen_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

import '../../../bloc/users/user/user_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../../infrastructure/artwork/add_artwork.dart';
import '../../../domain/models/user_profile.dart';
import '../../common_widgets/alert_box.dart';
import '../../common_widgets/artwork_text_field.dart';
import '../../common_widgets/assetentity_image_box.dart';
import '../../common_widgets/text_before_artwork_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({
    super.key,
    this.isImageEdited = false,
    this.exportDetails = const Stream.empty(),
  });
  final bool isImageEdited;
  final Stream<InstaAssetsExportDetails> exportDetails;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UserBloc>(context).add(const UserEvent.showingUser());
    });
    late AssetEntity assetEntity;
    final Size size = MediaQuery.of(context).size;
    final List<String> profileFieldText = [
      'Name',
      'Email',
      'Phone Number',
    ];
    final List<TextEditingController> profileTextConntrollers = [
      nameController,
      emailController,
      phoneNumberController,
    ];

    return Scaffold(
      backgroundColor: kBlackColor,
      body: SafeArea(child:
          BlocBuilder<UserBloc, UserState>(builder: (context, userState) {
        if (userState is displayUser) {
          final UserProfile userProfile = userState.userData;
          final List<String?> editTextList = [
            userProfile.userName,
            userProfile.userEmail,
            userProfile.phoneNumber,
          ];
          return CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 200,
                          child: CircleAvatar(
                            backgroundColor: Colors.lightGreen,
                            radius: 83,
                            child: !isImageEdited
                                ? CircularProfilePicture(
                                    onTap: () {
                                      pickingProfileImage(context);
                                    },
                                    radius: 80,
                                    clipRectRadius: 80,
                                  )
                                : StreamBuilder<InstaAssetsExportDetails>(
                                    stream: exportDetails,
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        assetEntity =
                                            snapshot.data!.selectedAssets[0];
                                      }
                                      return InkWell(
                                        onTap: () {
                                          pickingProfileImage(context);
                                        },
                                        child: AssetEntityImageBox(
                                          height: size.height * 0.2,
                                          width: size.height * 0.2,
                                          snapshot: snapshot,
                                          radius: 70,
                                        ),
                                      );
                                    }),
                          ),
                        ),
                        const Positioned(
                            top: 140,
                            left: 120,
                            child: Icon(
                              Icons.edit,
                              shadows: [
                                Shadow(color: kWhiteColor, blurRadius: 50)
                              ],
                              size: 60,
                              color: kWhiteColor,
                            ))
                      ],
                    ),
                    Column(
                      children: List.generate(
                          profileFieldText.length,
                          (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: TextBeforeArtworkField(
                                      text: profileFieldText[index],
                                    ),
                                  ),
                                  ArtworkTextfield(
                                    textEditingController:
                                        profileTextConntrollers[index],
                                    maxLines: index == 3 ? 4 : 1,
                                    editText: editTextList[index],
                                  ),
                                ],
                              )),
                    ),
                    kHeight50,
                    SignButton(
                        onTap: () async {
                          String imageUrl = '';
                          if (nameController.text.isNotEmpty) {
                            if (isImageEdited) {
                              imageUrl = await uploading(assetEntity);
                            }
                            final UserProfile newProfile = UserProfile(
                                userName: nameController.text,
                                userId: userProfile.userId,
                                adress: '',
                                gender: '',
                                backgroundImage: userProfile.backgroundImage,
                                imageUrl: isImageEdited
                                    ? imageUrl
                                    : userProfile.imageUrl,
                                phoneNumber: phoneNumberController.text,
                                userEmail: userProfile.userEmail);
                            await addUserProfileDetails(newProfile)
                                .then((value) {
                              Navigator.pop(context);
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => const ProfileScreen(),
                                  ));
                            }).onError((error, stackTrace) {
                              alertSnackbar(
                                  context, 'Error: ${error.toString()}');
                              log(error.toString());
                            });
                          } else {
                            alertSnackbar(context, 'Please Fill Your Name...');
                          }
                        },
                        width: size.width,
                        text: 'Submit'),
                  ],
                ),
              ),
            ],
          );
        } else {
          return const Text('Some Error has Ocuured');
        }
      })),
    );
  }

  pickingProfileImage(
    BuildContext context,
  ) {
    InstaAssetPicker.pickAssets(
      context,
      maxAssets: 1,
      title: 'Select images',
      onCompleted: (exportDetails) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => EditProfileScreen(
                isImageEdited: true,
                exportDetails: exportDetails,
              ),
            ));
      },
    );
  }
}
