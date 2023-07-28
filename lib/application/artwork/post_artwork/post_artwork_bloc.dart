// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:insta_assets_picker/insta_assets_picker.dart';

import '../../../infrastructure/artwork/add_artwork.dart';
import '../../../domain/models/artwork_details.dart';

part 'post_artwork_event.dart';
part 'post_artwork_state.dart';
part 'post_artwork_bloc.freezed.dart';

class PostArtworkBloc extends Bloc<PostArtworkEvent, PostArtworkState> {
  PostArtworkBloc() : super(const postArtworkinitial()) {
    on<readingPostedArtwork>((event, emit) async {
      emit(const displayArtwork(
              artworkList: [], isLoading: true, isError: false));
      // log('postBloccc');
      final postedArtwork = userArtworks().snapshots().map((snapshot) =>
          snapshot.docs
              .map((doc) => ArtworkDetails.fromJson(doc.data()))
              .toList());
  try {   await emit.forEach(
        postedArtwork,
        onData: (data) {
          //  log(data.toString());
          return displayArtwork(
              artworkList: data, isLoading: false, isError: false);
        },
        onError: (error, stackTrace) {
          log(error.toString());
          return const displayArtwork(
              artworkList: [], isLoading: true, isError: true);
        },
      );}catch(e){
        emit(const displayArtwork(
              artworkList: [], isLoading: false, isError: true));
      }
    });
    on<readingCompletePostedArtwork>((event, emit) async {
      final artworkListStream = readCompleteArtworkList();
      await emit.forEach(
        artworkListStream,
        onData: (data) {
          log(data.toString());
          return displayCompleteArtwork(
            artworkList: data,
            sortingValue: event.sortingValue,
          );
        },
        onError: (error, stackTrace) {
          log(error.toString());
          return const displayCompleteArtwork(
            artworkList: [],
            sortingValue: 0,
          );
        },
      );
    });
    on<addingArtwork>((event, emit) async {
      await addArtwork(event.artwork, event.assetEntity);
      add(const readingPostedArtwork());
     
    });
    on<editingArtwork>((event, emit) async {
      await editArtwork(
          event.newData, event.artworkId, event.assetEntity, event.oldData);
      add(const readingPostedArtwork());
     
    });

    on<deletingArtwork>((event, emit) async {
      await deleteArtwork(event.artworkId);
      add(const readingPostedArtwork());
   
    });
    on<getArtworkLength>((event, emit) async {
      final artworkListLength = await artworkLength();
      emit(displayArtworkLength(artworkListLength: artworkListLength));
    });

    on<issold>((event, emit) async {
      await isSold(event.artwork, event.isSold);
      add(const readingCompletePostedArtwork(sortingValue: 0));
    });

    on<readingVisitingProfileArtwork>((event, emit) async {
  emit(const displayVisitingArtwork(
              artworkList: [], isLoading: true, isError: false));
      final artworkListStream = readVisitingArtwork(event.visitingUserId);
   try {  await emit.forEach(
        artworkListStream,
        onData: (data) {
          log(data.toString());
          return displayVisitingArtwork(
            artworkList: data,
            isLoading:false,
            isError:false,
          );
        },
        onError: (error, stackTrace) {
          log(error.toString());
          return const displayVisitingArtwork(
            artworkList: [],
             isLoading:false,
            isError:true,
          );
        },
      );}catch(e){
         emit(const displayVisitingArtwork(
              artworkList: [], isLoading: false, isError: true));
      }
    });
  }
}
