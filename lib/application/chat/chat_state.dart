part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.chatinitial() = chatinitial;
  const factory ChatState.displayChats(
      {required QuerySnapshot<Map<String, dynamic>> queries}) = displayChats;
  const factory ChatState.displayEachChats(
          {required DocumentSnapshot<Map<String, dynamic>> docs}) =
      displayEachChats;
}
