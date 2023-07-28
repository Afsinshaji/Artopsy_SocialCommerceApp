// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/chat/chat.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const chatinitial()) {
    on<sendingMesssage>((event, emit) async {
      await sendMessage(
        event.content,
        event.peerId,
      );
    });
    on<recieveMessage>((event, emit) async {
      final chatStream = recievedMessage(
        event.peerId,
      );
      emit.forEach(chatStream, onData: (data) {
        return displayEachChats(docs: data);
      });
    });
    on<totalChatId>((event, emit) async {
      final chatStream = totalChatIds();
      emit.forEach(chatStream, onData: (data) {
        return displayChats(queries: data);
      });
    });

    on<messageRead>((event, emit) async {
      await messageReaded(
        event.peerId,
      );
    });
  }
}
