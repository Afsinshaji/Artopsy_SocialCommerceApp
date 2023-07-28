part of 'check_follow_bloc.dart';

@freezed
class CheckFollowState with _$CheckFollowState {
  const factory CheckFollowState.checkfollowinitial() = checkfollowinitial;
 const factory CheckFollowState.displayIsFollowed({
    required bool isFollowed,
  }) = displayIsFollowed;
}
