part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.readfavourites() = readfavourites;
  const factory FavouritesEvent.addtofavourites({required ArtworkDetails artwork}) = addtofavourites;
  const factory FavouritesEvent.removefromfavourites({required ArtworkDetails artwork}) = removefromfavourites;
  const factory FavouritesEvent.addandremovefavourites({required ArtworkDetails artwork}) = addandremovefavourites;
  const factory FavouritesEvent.checkfavourites({required ArtworkDetails artwork}) = checkfavourites;
}