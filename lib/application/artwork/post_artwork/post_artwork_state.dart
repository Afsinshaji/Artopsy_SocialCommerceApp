part of 'post_artwork_bloc.dart';

@freezed
class PostArtworkState with _$PostArtworkState {
  const factory PostArtworkState.postArtworkinitial() = postArtworkinitial;
   const factory PostArtworkState.displayArtwork({required List<ArtworkDetails>artworkList,required bool isLoading, required bool isError,}) = displayArtwork;
    const factory PostArtworkState.displayArtworkLength({required int artworkListLength}) = displayArtworkLength;
     const factory PostArtworkState.displayVisitingArtwork({required List<ArtworkDetails>artworkList,required bool isLoading, required bool isError}) = displayVisitingArtwork;
  const factory PostArtworkState.displayCompleteArtwork({required List<ArtworkDetails>artworkList,required int sortingValue})=displayCompleteArtwork;

}
    
              
              