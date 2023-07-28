part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.userinitial() = userinitial;
  const factory UserState.displayUser({required UserProfile userData}) = displayUser;
  
     

}
