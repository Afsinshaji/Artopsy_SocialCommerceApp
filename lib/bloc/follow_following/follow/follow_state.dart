part of 'follow_bloc.dart';

@freezed
class FollowState with _$FollowState {
  const factory FollowState.followinitial() = followinitial;
  const factory FollowState.displayFollow(
      {required List followersList,
      required List followingList}) = displayFollow;
}
