part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.addingUserName({required String userName,required String userEmail}) = addingUserName;
  const factory UserEvent.showingUser() = showingUser;
 
  const factory UserEvent.addingUserProfileDetails({required UserProfile userDetails}) = addingUserProfileDetails;

}
