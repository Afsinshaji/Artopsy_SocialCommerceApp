// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/follow_following/follow.dart';



part 'visiting_follow_event.dart';
part 'visiting_follow_state.dart';
part 'visiting_follow_bloc.freezed.dart';

class VisitingFollowBloc
    extends Bloc<VisitingFollowEvent, VisitingFollowState> {
  VisitingFollowBloc() : super(const visitingfollowinitial()) {
    on<gettingVisitingUserFollow>((event, emit) async {
      final followersList =
          await getVisitingUserFolllowers(event.visitingUserId);
      final followingList =
          await getVisitingUserFollowing(event.visitingUserId);
      emit(displayVisitingFollow(
          followersList: followersList, followingList: followingList));
    });
  }
}
