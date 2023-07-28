part of 'post_artwork_bloc.dart';

@freezed
class PostArtworkEvent with _$PostArtworkEvent {
  const factory PostArtworkEvent.readingPostedArtwork() = readingPostedArtwork;
  const factory PostArtworkEvent.readingCompletePostedArtwork(
      {required int sortingValue}) = readingCompletePostedArtwork;
  const factory PostArtworkEvent.getArtworkLength() = getArtworkLength;
  const factory PostArtworkEvent.addingArtwork(
      {required ArtworkDetails artwork,
      required AssetEntity assetEntity}) = addingArtwork;
  const factory PostArtworkEvent.deletingArtwork({required String artworkId}) =
      deletingArtwork;
  const factory PostArtworkEvent.editingArtwork({
    required ArtworkDetails newData,
    required String artworkId,
    required AssetEntity? assetEntity,
    required ArtworkDetails oldData,
  }) = editingArtwork;
  const factory PostArtworkEvent.readingVisitingProfileArtwork(
      {required String visitingUserId}) = readingVisitingProfileArtwork;
  const factory PostArtworkEvent.issold(
      {required ArtworkDetails artwork, required bool isSold}) = issold;
}
