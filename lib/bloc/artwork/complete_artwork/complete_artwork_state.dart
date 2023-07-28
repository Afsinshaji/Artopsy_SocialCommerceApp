part of 'complete_artwork_bloc.dart';

@freezed
class CompleteArtworkState with _$CompleteArtworkState {
  const factory CompleteArtworkState.completeartworkinitial() = completeartworkinitial;
const   factory CompleteArtworkState.displayingCompleteArtwork({
  required List<ArtworkDetails>artworkList,required int sortingValue,required bool isLoading,
  required bool isError,
     required Option<Either<MainFailure, Stream<List<ArtworkDetails>>>>
        completeArtworksFailureOrSuccesoption,
   
  })=displayingCompleteArtwork;
}

// const   factory CompleteArtworkState.displayingCompleteArtwork({
//   required List<ArtworkDetails>artworkList,required int sortingValue,required bool isLoading,
//   required bool isError,
  //  required Option<Either<MainFailure, Stream<List<ArtworkDetails>>>>
  //       completeArtworksFailureOrSuccesoption,
//   })=displayingCompleteArtwork;