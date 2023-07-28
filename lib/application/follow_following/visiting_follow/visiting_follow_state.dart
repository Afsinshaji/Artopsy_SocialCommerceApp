part of 'visiting_follow_bloc.dart';

@freezed
class VisitingFollowState with _$VisitingFollowState {
  const factory VisitingFollowState.visitingfollowinitial() = visitingfollowinitial;
    const factory VisitingFollowState.displayVisitingFollow(
      {required List followersList,
      required List followingList}) = displayVisitingFollow;
}
