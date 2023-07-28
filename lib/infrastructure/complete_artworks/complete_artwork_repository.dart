import 'package:artopsy/domain/core/failure/main_failure.dart';

import 'package:artopsy/domain/models/artwork_details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart';

import '../../domain/complete_artworks/i_complete_artworks_repo.dart';



class DownloadsRepository implements ICompleteArtworkRepo {
  @override
  Future<Either<MainFailure, Stream<List<ArtworkDetails>>>>
      getCompleteArtworks() async {
    try {
      final completeCollection =
          FirebaseFirestore.instance.collection('CompleteArtworkList');
      final completeArtwork = completeCollection.snapshots().map((snapshot) =>
          snapshot.docs
              .map((doc) => ArtworkDetails.fromJson(doc.data()))
              .toList());
      return Right(completeArtwork);
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}


