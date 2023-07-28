// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/complete_artworks/i_complete_artworks_repo.dart';
import '../../../domain/core/failure/main_failure.dart';
import '../../../domain/models/artwork_details.dart';

part 'complete_artwork_event.dart';
part 'complete_artwork_state.dart';
part 'complete_artwork_bloc.freezed.dart';

class CompleteArtworkBloc
    extends Bloc<CompleteArtworkEvent, CompleteArtworkState> {
  final ICompleteArtworkRepo completeArtworkService;
  CompleteArtworkBloc(this.completeArtworkService)
      : super(const completeartworkinitial()) {
    on<readingCompletePostedArtwork>((event, emit) async {
      emit(displayingCompleteArtwork(
        artworkList: [],
        sortingValue: 0,
        isLoading: true,
        completeArtworksFailureOrSuccesoption: none(),
        isError: false,
      ));
      final result = await completeArtworkService.getCompleteArtworks();

      await result.fold(
          (l) async => await emit.forEach(
                const Stream.empty(),
                onData: (data) {
                  return CompleteArtworkState.displayingCompleteArtwork(
                      artworkList: [],
                      sortingValue: 0,
                      isLoading: false,
                      isError: true,
                      completeArtworksFailureOrSuccesoption: Some(Left(l)));
                },
              ),
          (r) async => await emit.forEach(
                r,
                onData: (data) {
                  return CompleteArtworkState.displayingCompleteArtwork(
                      artworkList: data,
                      sortingValue: event.sortingValue,
                      isLoading: false,
                      isError: false,
                      completeArtworksFailureOrSuccesoption: Some(Right(r)));
                },
              ));

      // final artworkListStream = readCompleteArtworkList();
      // await emit.forEach(
      //   artworkListStream,
      //   onData: (data) {
      //     log(data.toString());
      //     return displayingCompleteArtwork(
      //       artworkList: data,
      //       sortingValue: event.sortingValue,
      //       isLoading: false,
      //       isError:false
      //     );
      //   },
      //   onError: (error, stackTrace) {
      //     log(error.toString());
      //     return const displayingCompleteArtwork(
      //       artworkList: [],
      //       sortingValue: 0,
      //       isLoading: false,
      //       isError:true
      //     );
      //   },
      // );
    });
  }
}



// class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
//   final IDownloadRepo _downloadsRepo;
//   DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
//     on<_GetDownloadsImages>((event, emit) async {
//       emit(state.copyWith(
//           isloading: true, downloadsFailureOrSuccesoption: none()));
//       final Either<MainFailure, List<Downloads>> downloadsoption =
//           await _downloadsRepo.getDownloadsImages();
//       log(downloadsoption.toString());

//       emit(downloadsoption.fold(
//           (failure) => state.copyWith(
//                 isloading: false,
                // downloadsFailureOrSuccesoption: Some(
                //   Left(failure),
                // ),
//               ),
//           (success) => state.copyWith(
//                 isloading: false,
//                 downloads: success,
//                 downloadsFailureOrSuccesoption: Some(
//                   Right(success),
//                 ),
//               )));
//     });
//   }
// }




//////////////////////////////////////////////////////////////////////////////
///
///
///
///
///import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:netflix/domain/core/failures/main_failure.dart';
// import 'package:netflix/domain/downloads/i_downloads_repo.dart';
// import 'package:netflix/domain/search/search_service.dart';

// import '../../domain/downloads/models/downloads.dart';
// import '../../domain/search/models/search_response/search_response.dart';

// part 'search_event.dart';
// part 'search_state.dart';
// part 'search_bloc.freezed.dart';

// @injectable
// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   final IDownloadRepo _downloadsService;
//   final SearchService _searchService;
//   SearchBloc(this._searchService, this._downloadsService)
//       : super(SearchState.initial()) {
//     /*
//     idle state
//     */
//     on<Initialize>((event, emit) async {
//       if (state.idleList.isNotEmpty) {
//         emit(SearchState(
//             searchResultList: [],
//             idleList: state.idleList,
//             isLoading: false,
//             isError: false));
//         return;
//       }
//       emit(const SearchState(
//         searchResultList: [],
//         idleList: [],
//         isLoading: true,
//         isError: false,
//       ));
//       //get trending
//       final _result = await _downloadsService.getDownloadsImages();
//       final _state = _result.fold((MainFailure f) {
//         return const SearchState(
//             searchResultList: [],
//             idleList: [],
//             isLoading: false,
//             isError: true);
//       }, (List<Downloads> list) {
//         return SearchState(
//             searchResultList: [],
//             idleList: list,
//             isLoading: false,
//             isError: false);
//       });
//       //show to ui

//       emit(_state);
//     });
//     /*
//     search result state
//     */
//     on<SearchMovie>((event, emit) async {
//       // call search movie api
//       emit(const SearchState(
//         searchResultList: [],
//         idleList: [],
//         isLoading: true,
//         isError: false,
//       ));
//       final _result =
//           await _searchService.searchMovies(movieQuery: event.movieQuery);



          
//       final _state = _result.fold(
//         (MainFailure f) {
//           return const SearchState(
//               searchResultList: [],
//               idleList: [],
//               isLoading: false,
//               isError: true);
//         },
//         (SearchResponse r) {
//           return SearchState(
//               searchResultList: r.results,
//               idleList: [],
//               isLoading: false,
//               isError: false);
//         },
//       );
//       // show to ui
//       emit(_state);
//     });
//   }
// }
