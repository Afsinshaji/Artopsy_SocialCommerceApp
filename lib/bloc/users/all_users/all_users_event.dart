part of 'all_users_bloc.dart';

@freezed
class AllUsersEvent with _$AllUsersEvent {
  const factory AllUsersEvent.readingAllUsers() = readingAllUsers;
}