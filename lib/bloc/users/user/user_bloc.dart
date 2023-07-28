

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/users/add_user_name.dart';
import '../../../domain/models/user_profile.dart';



part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const userinitial()) {
    on<addingUserName>((event, emit) async {
      await addUserName(event.userName, event.userEmail);
    });
    on<showingUser>((event, emit) async {
      final user = await showUser();
      emit(displayUser(userData: user));
    });
    
    on<addingUserProfileDetails>((event, emit) async {
      await addUserProfileDetails(event.userDetails);
    });
 
  }
}
