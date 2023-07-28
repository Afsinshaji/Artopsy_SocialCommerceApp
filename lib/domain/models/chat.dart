class Chat {
  final String chatFromId;
  final String chatToId;
  final String message;
  final String timeStamp;
  final bool isMessageReaded;
  Chat({
    required this.chatFromId,
    required this.chatToId,
    required this.message,
    required this.timeStamp,
    required this.isMessageReaded,
  });
  Map<String, dynamic> toJson() {
    return {
      'chatFromId': chatFromId,
      'chatToId': chatToId,
      'message': message,
      'timeStamp': timeStamp,
      'isMessageReaded':isMessageReaded,
    };
  }

  static Chat fromJson(Map json) {
    return Chat(
        chatFromId: json['chatFromId'],
        chatToId: json['chatToId'],
        message: json['message'],
        timeStamp: json['timeStamp'],
        isMessageReaded:json['isMessageReaded'],
        );
  }
}
