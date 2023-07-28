import 'dart:developer';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/users/add_user_name.dart';
import '../../../domain/models/user_profile.dart';


part 'all_users_event.dart';
part 'all_users_state.dart';
part 'all_users_bloc.freezed.dart';

class AllUsersBloc extends Bloc<AllUsersEvent, AllUsersState> {
  AllUsersBloc() : super(const allusersinitial()) {
    on<readingAllUsers>((event, emit)async {
      final readAll = readAllusers();
    await  emit.forEach(
        readAll,
        onData: (data) {
          return displayAllUsers(completeUserList: data);
        },
        onError: (error, stackTrace) {
          log(error.toString());
          return const displayAllUsers(completeUserList: []);
        },
      );
    });
  }
}
