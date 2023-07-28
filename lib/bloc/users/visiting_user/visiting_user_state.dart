part of 'visiting_user_bloc.dart';

@freezed
class VisitingUserState with _$VisitingUserState {
  const factory VisitingUserState.visitinguserinitial() = visitinguserinitial;
  const factory VisitingUserState.displayVisitingUser({required UserProfile userData}) = displayVisitingUser;
     
}
