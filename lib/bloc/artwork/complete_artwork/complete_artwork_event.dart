part of 'complete_artwork_bloc.dart';

@freezed
class CompleteArtworkEvent with _$CompleteArtworkEvent {
  const factory CompleteArtworkEvent.readingCompletePostedArtwork(
      {required int sortingValue}) = readingCompletePostedArtwork;
}