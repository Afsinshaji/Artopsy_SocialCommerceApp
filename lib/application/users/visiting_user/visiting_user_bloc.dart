// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/users/add_user_name.dart';
import '../../../domain/models/user_profile.dart';



part 'visiting_user_event.dart';
part 'visiting_user_state.dart';
part 'visiting_user_bloc.freezed.dart';

class VisitingUserBloc extends Bloc<VisitingUserEvent, VisitingUserState> {
  VisitingUserBloc() : super(const visitinguserinitial()) {
   on<showingVisitingUser>((event, emit) async {
      final user = await showVisitingUser(event.visitingUserId);
      emit(displayVisitingUser(userData: user));
    });
  }
}
