part of 'all_users_bloc.dart';

@freezed
class AllUsersState with _$AllUsersState {
  const factory AllUsersState.allusersinitial() = allusersinitial;
   const factory AllUsersState.displayAllUsers({required List<UserProfile> completeUserList}) = displayAllUsers;

}
