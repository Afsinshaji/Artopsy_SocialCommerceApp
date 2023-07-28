part of 'visiting_follow_bloc.dart';

@freezed
class VisitingFollowEvent with _$VisitingFollowEvent {
  const factory VisitingFollowEvent.gettingVisitingUserFollow({required String visitingUserId}) =
      gettingVisitingUserFollow;
}