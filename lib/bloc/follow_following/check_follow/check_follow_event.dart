part of 'check_follow_bloc.dart';

@freezed
class CheckFollowEvent with _$CheckFollowEvent {
  const factory CheckFollowEvent.checkingFollowed({required String visitingUserId}) = checkingFollowed;
}