import 'dart:developer';

import 'package:artopsy/application/artwork/post_artwork/post_artwork_bloc.dart';
import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/domain/models/artwork_details.dart';
import 'package:artopsy/presentation/common_widgets/circular_icon_button.dart';
import 'package:artopsy/presentation/common_widgets/network_image_box.dart';
import 'package:artopsy/presentation/common_widgets/sign_buttton.dart';
import 'package:artopsy/presentation/screens/addartwork/widget/add_artwork_imageclip.dart';
import 'package:artopsy/presentation/screens/addartwork/widget/artwork_details_buttton_row.dart';
import 'package:artopsy/presentation/screens/addartwork/widget/pick_a_yaer_field.dart';
import 'package:artopsy/presentation/screens/myprofile/screen_myprofile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

import '../../../core/colors/colors.dart';
import '../../../core/list/list.dart';
import '../../common_widgets/alert_box.dart';
import '../../common_widgets/artwork_text_field.dart';
import '../../common_widgets/assetentity_image_box.dart';
import '../../common_widgets/text_before_artwork_field.dart';

// ignore: must_be_immutable
class AddArtworkScreen extends StatelessWidget {
  AddArtworkScreen({
    super.key,
    this.exportDetails = const Stream.empty(),
    this.artwork = const [],
    required this.toEdit,
    this.imageEdited = false,
  });
  final bool toEdit;
  final bool imageEdited;
  final dynamic artwork;
  final Stream<InstaAssetsExportDetails> exportDetails;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  final TextEditingController heightController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController depthController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  static ValueNotifier<String> pickedYear = ValueNotifier('2023');
  static ValueNotifier<String> selectedCategory = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    List measuredText = [];
    if (toEdit) {
      measuredText = [artwork.height, artwork.width, artwork.depth];
    }

    final List<TextEditingController> measurementControllerList = [
      heightController,
      widthController,
      depthController,
    ];
    final size = MediaQuery.of(context).size;
    late AssetEntity assetEntity;
    return Scaffold(
      backgroundColor: kBlackColor,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ClipPath(
                    clipper: AddArtworkImageclip(),
                    child: !toEdit || imageEdited
                        ? StreamBuilder<InstaAssetsExportDetails>(
                            stream: exportDetails,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                assetEntity = snapshot.data!.selectedAssets[0];
                              }
                              return AssetEntityImageBox(
                                height: size.height * 0.5,
                                width: size.width,
                                snapshot: snapshot,
                              );
                            })
                        : Stack(
                            children: [
                              NetworkImageBox(
                                  height: size.height * 0.5,
                                  width: size.width,
                                  image: artwork.imageUrl,
                                  borderradius: 0),
                              Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 300,
                                  child: CircularIconButton(
                                      icon: Icons.edit,
                                      iconSize: 30,
                                      buttonBackgroundColor: kWhiteColor,
                                      iconColor: kBlackColor,
                                      onTap: () {
                                        InstaAssetPicker.pickAssets(
                                          context,
                                          maxAssets: 1,
                                          title: 'Select images',
                                          onCompleted: (exportDetails) {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    AddArtworkScreen(
                                                  toEdit: true,
                                                  exportDetails: exportDetails,
                                                  artwork: artwork,
                                                  imageEdited: true,
                                                ),
                                              ),
                                              // ModalRoute.withName('/')
                                            );
                                          },
                                        );
                                      }))
                            ],
                          ));
              },
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const TextBeforeArtworkField(
                  text: 'Title your Artwork *',
                ),
                ArtworkTextfield(
                  textEditingController: titleController,
                  maxLines: 1,
                  editText: toEdit ? artwork.title : '',
                ),
                const TextBeforeArtworkField(
                  text: 'Tell us More about your art',
                ),
                ArtworkTextfield(
                  textEditingController: descriptionController,
                  maxLines: null,
                  editText: toEdit ? artwork.desctription : '',
                ),
                ArtworkDetailsButtonRow(
                    selectedCategory: AddArtworkScreen.selectedCategory,
                    selectedValue: toEdit ? artwork.category : categoryItems[0],
                    items: categoryItems,
                    detailName: 'Category'),
                kHeight,
                PickYear(
                  width: size.width,
                ),
                kHeight,
                Row(
                  children: List.generate(3, (index) {
                    return Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextBeforeArtworkField(
                            padding: const EdgeInsets.all(0),
                            text: measurements[index],
                          ),
                          ArtworkTextfield(
                            textInputType: TextInputType.number,
                            textEditingController:
                                measurementControllerList[index],
                            maxLines: 1,
                            editText: toEdit ? measuredText[index] : '',
                          ),
                        ],
                      ),
                    ));
                  }),
                ),
                const TextBeforeArtworkField(
                  text: 'PRICE *',
                ),
                ArtworkTextfield(
                  isPriceText: true,
                  textInputType: TextInputType.number,
                  textEditingController: priceController,
                  maxLines: 1,
                  editText: toEdit ? artwork.price : '',
                ),
                SignButton(
                    onTap: () {
                      if (titleController.text.isNotEmpty &&
                          priceController.text.isNotEmpty) {
                        final data = ArtworkDetails(
                          isSold: false,
                          userId: FirebaseAuth.instance.currentUser!.uid,
                          artworkId: '',
                          title: titleController.text,
                          artist: '',
                          desctription: descriptionController.text,
                          category:
                              AddArtworkScreen.selectedCategory.value.isEmpty
                                  ? 'Digital Art'
                                  : AddArtworkScreen.selectedCategory.value,
                          yearOfCreation: AddArtworkScreen.pickedYear.value,
                          height: heightController.text,
                          width: widthController.text,
                          depth: depthController.text,
                          price: priceController.text,
                          imageUrl: '',
                        );
                        if (toEdit) {
                          log(artwork.title);
                          // editArtwork(data, artwork.artworkId,
                          //     imageEdited ? assetEntity : null, artwork);
                            BlocProvider.of<PostArtworkBloc>(context).add(PostArtworkEvent.editingArtwork(
                              newData: data,artworkId: artwork.artworkId,
                           assetEntity: imageEdited ? assetEntity : null,oldData: artwork));
                        } else {
                          //  addArtwork(data, assetEntity);
                          BlocProvider.of<PostArtworkBloc>(context).add(PostArtworkEvent.addingArtwork(artwork: data,
                           assetEntity: assetEntity));
                        }
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const MyProfilescreen(),
                            ));
                      } else {
                        alertSnackbar(context, 'Fill the Required Fields');
                      }
                    },
                    width: size.width,
                    text: 'Submit')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
