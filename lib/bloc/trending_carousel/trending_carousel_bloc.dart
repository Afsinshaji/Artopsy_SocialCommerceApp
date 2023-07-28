// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_carousel_event.dart';
part 'trending_carousel_state.dart';
part 'trending_carousel_bloc.freezed.dart';

class TrendingCarouselBloc extends Bloc<TrendingCarouselEvent, TrendingCarouselState> {
  TrendingCarouselBloc() : super(const _Initial()) {
    on<TrendingCarouselEvent>((event, emit) {
     
    });
  }
}
