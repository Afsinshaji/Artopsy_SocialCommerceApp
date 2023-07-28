// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/follow_following/follow.dart';



part 'follow_event.dart';
part 'follow_state.dart';
part 'follow_bloc.freezed.dart';

class FollowBloc extends Bloc<FollowEvent, FollowState> {
  FollowBloc() : super(const followinitial()) {
    on<addingFollow>((event, emit) async {
      await addFollow(event.userId);
      add(const gettingFollow());
    });
    on<removingFollow>((event, emit) async {
      await removeFollow(event.userId);
      add(const gettingFollow());
    });
    on<gettingFollow>((event, emit) async {
      final followersList = await getFolllowers();
      final followingList = await getFolllowing();
      emit(displayFollow(
          followersList: followersList, followingList: followingList));
    });

   
  }
}
