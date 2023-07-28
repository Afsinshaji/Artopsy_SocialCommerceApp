
import 'dart:developer';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/favourites/favourites.dart';
import '../../domain/models/artwork_details.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc() : super(const favouritesinitial()) {
    on<readfavourites>((event, emit) async {
      emit(const displayfavourites(arworkList: [],isLoading:true,isError:false,));
   try{   final List<ArtworkDetails> favList = await readFav();
      emit(displayfavourites(arworkList: favList,isLoading:false,isError:false,));}
      catch(e){
         emit(const displayfavourites(arworkList: [],isLoading:false,isError:true,));
      }
    });
    on<addtofavourites>((event, emit) async {
      await addTofav(event.artwork);
      add(const readfavourites());
      add(checkfavourites(artwork: event.artwork));
    });
    on<removefromfavourites>((event, emit) async {
      await removeFav(event.artwork);
      add(const readfavourites());
      add(checkfavourites(artwork: event.artwork));
    });
    on<addandremovefavourites>((event, emit) async {
      await addAndremoveFav(event.artwork);
      add(const readfavourites());
      // add(checkfavourites(artwork: event.artwork));
    });
    on<checkfavourites>((event, emit) async {
      final bool isFav = await checkFav(event.artwork);
      log('$isFav fromBloc');

      final likes = await getLikesNum(event.artwork.artworkId);
      emit(isfavOrnot(isFav: isFav, likes: likes));
    });
  }
}
