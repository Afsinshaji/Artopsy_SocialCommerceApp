part of 'visiting_user_bloc.dart';

@freezed
class VisitingUserEvent with _$VisitingUserEvent {
  const factory VisitingUserEvent.showingVisitingUser({required String visitingUserId}) = showingVisitingUser;
}