part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.favouritesinitial() = favouritesinitial;
  const factory FavouritesState.displayfavourites({required List <ArtworkDetails> arworkList,required bool isLoading,required bool isError,}) = displayfavourites;
  const factory FavouritesState.isfavOrnot({required bool isFav,required dynamic likes}) = isfavOrnot;
}
