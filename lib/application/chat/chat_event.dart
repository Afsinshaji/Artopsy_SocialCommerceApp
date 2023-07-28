part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendingMesssage({
    required String content,
    required String peerId,
  }) = sendingMesssage;
  const factory ChatEvent.recieveMessage({
    required String peerId,
  }) = recieveMessage;
  const factory ChatEvent.totalChatId() = totalChatId;
  const factory ChatEvent.messageRead({
    required String peerId,
  }) = messageRead;
}
