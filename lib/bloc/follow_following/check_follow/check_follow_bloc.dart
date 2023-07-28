// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/follow_following/follow.dart';



part 'check_follow_event.dart';
part 'check_follow_state.dart';
part 'check_follow_bloc.freezed.dart';

class CheckFollowBloc extends Bloc<CheckFollowEvent, CheckFollowState> {
  CheckFollowBloc() : super(const checkfollowinitial()) {
    on<checkingFollowed>((event, emit) async {
      final isFollowed = await checkFollowed(event.visitingUserId);
      emit(displayIsFollowed(isFollowed: isFollowed));
    });
  }
}
