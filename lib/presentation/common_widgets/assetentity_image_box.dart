import 'package:flutter/material.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

class AssetEntityImageBox extends StatelessWidget {
  const AssetEntityImageBox({
    super.key,
    required this.height,
    required this.width,
    required this.snapshot,
    this.radius=0.0,
  });

  final double height;
  final double width;
  final AsyncSnapshot<InstaAssetsExportDetails> snapshot;
  final double radius;
  @override
  Widget build(BuildContext context) {
    // log(snapshot.data.selectedAssets[0].typeInt.toString());
    // AssetEntity a =
    //   AssetEntity(id: '1000020998', typeInt: 1, width: 768, height: 1024);
    if (snapshot.hasData) {
      return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    AssetEntityImageProvider(snapshot.data!.selectedAssets[0]),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(radius)),
      );
    } else {
      return const Text('Not Found');
    }
  }
}
