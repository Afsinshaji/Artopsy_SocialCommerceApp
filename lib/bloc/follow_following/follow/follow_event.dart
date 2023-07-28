part of 'follow_bloc.dart';

@freezed
class FollowEvent with _$FollowEvent {
  const factory FollowEvent.addingFollow({required String userId}) = addingFollow;

  const factory FollowEvent.removingFollow({required String userId}) = removingFollow;
  const factory FollowEvent.gettingFollow() = gettingFollow;

 
}
