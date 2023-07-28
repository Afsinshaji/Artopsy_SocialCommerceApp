// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, String peerId) sendingMesssage,
    required TResult Function(String peerId) recieveMessage,
    required TResult Function() totalChatId,
    required TResult Function(String peerId) messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content, String peerId)? sendingMesssage,
    TResult? Function(String peerId)? recieveMessage,
    TResult? Function()? totalChatId,
    TResult? Function(String peerId)? messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, String peerId)? sendingMesssage,
    TResult Function(String peerId)? recieveMessage,
    TResult Function()? totalChatId,
    TResult Function(String peerId)? messageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendingMesssage value) sendingMesssage,
    required TResult Function(recieveMessage value) recieveMessage,
    required TResult Function(totalChatId value) totalChatId,
    required TResult Function(messageRead value) messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendingMesssage value)? sendingMesssage,
    TResult? Function(recieveMessage value)? recieveMessage,
    TResult? Function(totalChatId value)? totalChatId,
    TResult? Function(messageRead value)? messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendingMesssage value)? sendingMesssage,
    TResult Function(recieveMessage value)? recieveMessage,
    TResult Function(totalChatId value)? totalChatId,
    TResult Function(messageRead value)? messageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$sendingMesssageCopyWith<$Res> {
  factory _$$sendingMesssageCopyWith(
          _$sendingMesssage value, $Res Function(_$sendingMesssage) then) =
      __$$sendingMesssageCopyWithImpl<$Res>;
  @useResult
  $Res call({String content, String peerId});
}

/// @nodoc
class __$$sendingMesssageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$sendingMesssage>
    implements _$$sendingMesssageCopyWith<$Res> {
  __$$sendingMesssageCopyWithImpl(
      _$sendingMesssage _value, $Res Function(_$sendingMesssage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? peerId = null,
  }) {
    return _then(_$sendingMesssage(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      peerId: null == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$sendingMesssage implements sendingMesssage {
  const _$sendingMesssage({required this.content, required this.peerId});

  @override
  final String content;
  @override
  final String peerId;

  @override
  String toString() {
    return 'ChatEvent.sendingMesssage(content: $content, peerId: $peerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sendingMesssage &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.peerId, peerId) || other.peerId == peerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, peerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sendingMesssageCopyWith<_$sendingMesssage> get copyWith =>
      __$$sendingMesssageCopyWithImpl<_$sendingMesssage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, String peerId) sendingMesssage,
    required TResult Function(String peerId) recieveMessage,
    required TResult Function() totalChatId,
    required TResult Function(String peerId) messageRead,
  }) {
    return sendingMesssage(content, peerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content, String peerId)? sendingMesssage,
    TResult? Function(String peerId)? recieveMessage,
    TResult? Function()? totalChatId,
    TResult? Function(String peerId)? messageRead,
  }) {
    return sendingMesssage?.call(content, peerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, String peerId)? sendingMesssage,
    TResult Function(String peerId)? recieveMessage,
    TResult Function()? totalChatId,
    TResult Function(String peerId)? messageRead,
    required TResult orElse(),
  }) {
    if (sendingMesssage != null) {
      return sendingMesssage(content, peerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendingMesssage value) sendingMesssage,
    required TResult Function(recieveMessage value) recieveMessage,
    required TResult Function(totalChatId value) totalChatId,
    required TResult Function(messageRead value) messageRead,
  }) {
    return sendingMesssage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendingMesssage value)? sendingMesssage,
    TResult? Function(recieveMessage value)? recieveMessage,
    TResult? Function(totalChatId value)? totalChatId,
    TResult? Function(messageRead value)? messageRead,
  }) {
    return sendingMesssage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendingMesssage value)? sendingMesssage,
    TResult Function(recieveMessage value)? recieveMessage,
    TResult Function(totalChatId value)? totalChatId,
    TResult Function(messageRead value)? messageRead,
    required TResult orElse(),
  }) {
    if (sendingMesssage != null) {
      return sendingMesssage(this);
    }
    return orElse();
  }
}

abstract class sendingMesssage implements ChatEvent {
  const factory sendingMesssage(
      {required final String content,
      required final String peerId}) = _$sendingMesssage;

  String get content;
  String get peerId;
  @JsonKey(ignore: true)
  _$$sendingMesssageCopyWith<_$sendingMesssage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$recieveMessageCopyWith<$Res> {
  factory _$$recieveMessageCopyWith(
          _$recieveMessage value, $Res Function(_$recieveMessage) then) =
      __$$recieveMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String peerId});
}

/// @nodoc
class __$$recieveMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$recieveMessage>
    implements _$$recieveMessageCopyWith<$Res> {
  __$$recieveMessageCopyWithImpl(
      _$recieveMessage _value, $Res Function(_$recieveMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peerId = null,
  }) {
    return _then(_$recieveMessage(
      peerId: null == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$recieveMessage implements recieveMessage {
  const _$recieveMessage({required this.peerId});

  @override
  final String peerId;

  @override
  String toString() {
    return 'ChatEvent.recieveMessage(peerId: $peerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$recieveMessage &&
            (identical(other.peerId, peerId) || other.peerId == peerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, peerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$recieveMessageCopyWith<_$recieveMessage> get copyWith =>
      __$$recieveMessageCopyWithImpl<_$recieveMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, String peerId) sendingMesssage,
    required TResult Function(String peerId) recieveMessage,
    required TResult Function() totalChatId,
    required TResult Function(String peerId) messageRead,
  }) {
    return recieveMessage(peerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content, String peerId)? sendingMesssage,
    TResult? Function(String peerId)? recieveMessage,
    TResult? Function()? totalChatId,
    TResult? Function(String peerId)? messageRead,
  }) {
    return recieveMessage?.call(peerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, String peerId)? sendingMesssage,
    TResult Function(String peerId)? recieveMessage,
    TResult Function()? totalChatId,
    TResult Function(String peerId)? messageRead,
    required TResult orElse(),
  }) {
    if (recieveMessage != null) {
      return recieveMessage(peerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendingMesssage value) sendingMesssage,
    required TResult Function(recieveMessage value) recieveMessage,
    required TResult Function(totalChatId value) totalChatId,
    required TResult Function(messageRead value) messageRead,
  }) {
    return recieveMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendingMesssage value)? sendingMesssage,
    TResult? Function(recieveMessage value)? recieveMessage,
    TResult? Function(totalChatId value)? totalChatId,
    TResult? Function(messageRead value)? messageRead,
  }) {
    return recieveMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendingMesssage value)? sendingMesssage,
    TResult Function(recieveMessage value)? recieveMessage,
    TResult Function(totalChatId value)? totalChatId,
    TResult Function(messageRead value)? messageRead,
    required TResult orElse(),
  }) {
    if (recieveMessage != null) {
      return recieveMessage(this);
    }
    return orElse();
  }
}

abstract class recieveMessage implements ChatEvent {
  const factory recieveMessage({required final String peerId}) =
      _$recieveMessage;

  String get peerId;
  @JsonKey(ignore: true)
  _$$recieveMessageCopyWith<_$recieveMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$totalChatIdCopyWith<$Res> {
  factory _$$totalChatIdCopyWith(
          _$totalChatId value, $Res Function(_$totalChatId) then) =
      __$$totalChatIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$totalChatIdCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$totalChatId>
    implements _$$totalChatIdCopyWith<$Res> {
  __$$totalChatIdCopyWithImpl(
      _$totalChatId _value, $Res Function(_$totalChatId) _then)
      : super(_value, _then);
}

/// @nodoc

class _$totalChatId implements totalChatId {
  const _$totalChatId();

  @override
  String toString() {
    return 'ChatEvent.totalChatId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$totalChatId);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, String peerId) sendingMesssage,
    required TResult Function(String peerId) recieveMessage,
    required TResult Function() totalChatId,
    required TResult Function(String peerId) messageRead,
  }) {
    return totalChatId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content, String peerId)? sendingMesssage,
    TResult? Function(String peerId)? recieveMessage,
    TResult? Function()? totalChatId,
    TResult? Function(String peerId)? messageRead,
  }) {
    return totalChatId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, String peerId)? sendingMesssage,
    TResult Function(String peerId)? recieveMessage,
    TResult Function()? totalChatId,
    TResult Function(String peerId)? messageRead,
    required TResult orElse(),
  }) {
    if (totalChatId != null) {
      return totalChatId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendingMesssage value) sendingMesssage,
    required TResult Function(recieveMessage value) recieveMessage,
    required TResult Function(totalChatId value) totalChatId,
    required TResult Function(messageRead value) messageRead,
  }) {
    return totalChatId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendingMesssage value)? sendingMesssage,
    TResult? Function(recieveMessage value)? recieveMessage,
    TResult? Function(totalChatId value)? totalChatId,
    TResult? Function(messageRead value)? messageRead,
  }) {
    return totalChatId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendingMesssage value)? sendingMesssage,
    TResult Function(recieveMessage value)? recieveMessage,
    TResult Function(totalChatId value)? totalChatId,
    TResult Function(messageRead value)? messageRead,
    required TResult orElse(),
  }) {
    if (totalChatId != null) {
      return totalChatId(this);
    }
    return orElse();
  }
}

abstract class totalChatId implements ChatEvent {
  const factory totalChatId() = _$totalChatId;
}

/// @nodoc
abstract class _$$messageReadCopyWith<$Res> {
  factory _$$messageReadCopyWith(
          _$messageRead value, $Res Function(_$messageRead) then) =
      __$$messageReadCopyWithImpl<$Res>;
  @useResult
  $Res call({String peerId});
}

/// @nodoc
class __$$messageReadCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$messageRead>
    implements _$$messageReadCopyWith<$Res> {
  __$$messageReadCopyWithImpl(
      _$messageRead _value, $Res Function(_$messageRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peerId = null,
  }) {
    return _then(_$messageRead(
      peerId: null == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$messageRead implements messageRead {
  const _$messageRead({required this.peerId});

  @override
  final String peerId;

  @override
  String toString() {
    return 'ChatEvent.messageRead(peerId: $peerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$messageRead &&
            (identical(other.peerId, peerId) || other.peerId == peerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, peerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$messageReadCopyWith<_$messageRead> get copyWith =>
      __$$messageReadCopyWithImpl<_$messageRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, String peerId) sendingMesssage,
    required TResult Function(String peerId) recieveMessage,
    required TResult Function() totalChatId,
    required TResult Function(String peerId) messageRead,
  }) {
    return messageRead(peerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content, String peerId)? sendingMesssage,
    TResult? Function(String peerId)? recieveMessage,
    TResult? Function()? totalChatId,
    TResult? Function(String peerId)? messageRead,
  }) {
    return messageRead?.call(peerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, String peerId)? sendingMesssage,
    TResult Function(String peerId)? recieveMessage,
    TResult Function()? totalChatId,
    TResult Function(String peerId)? messageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(peerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendingMesssage value) sendingMesssage,
    required TResult Function(recieveMessage value) recieveMessage,
    required TResult Function(totalChatId value) totalChatId,
    required TResult Function(messageRead value) messageRead,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendingMesssage value)? sendingMesssage,
    TResult? Function(recieveMessage value)? recieveMessage,
    TResult? Function(totalChatId value)? totalChatId,
    TResult? Function(messageRead value)? messageRead,
  }) {
    return messageRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendingMesssage value)? sendingMesssage,
    TResult Function(recieveMessage value)? recieveMessage,
    TResult Function(totalChatId value)? totalChatId,
    TResult Function(messageRead value)? messageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class messageRead implements ChatEvent {
  const factory messageRead({required final String peerId}) = _$messageRead;

  String get peerId;
  @JsonKey(ignore: true)
  _$$messageReadCopyWith<_$messageRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatinitial,
    required TResult Function(QuerySnapshot<Map<String, dynamic>> queries)
        displayChats,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        displayEachChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatinitial,
    TResult? Function(QuerySnapshot<Map<String, dynamic>> queries)?
        displayChats,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        displayEachChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatinitial,
    TResult Function(QuerySnapshot<Map<String, dynamic>> queries)? displayChats,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        displayEachChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(chatinitial value) chatinitial,
    required TResult Function(displayChats value) displayChats,
    required TResult Function(displayEachChats value) displayEachChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(chatinitial value)? chatinitial,
    TResult? Function(displayChats value)? displayChats,
    TResult? Function(displayEachChats value)? displayEachChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(chatinitial value)? chatinitial,
    TResult Function(displayChats value)? displayChats,
    TResult Function(displayEachChats value)? displayEachChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$chatinitialCopyWith<$Res> {
  factory _$$chatinitialCopyWith(
          _$chatinitial value, $Res Function(_$chatinitial) then) =
      __$$chatinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$chatinitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$chatinitial>
    implements _$$chatinitialCopyWith<$Res> {
  __$$chatinitialCopyWithImpl(
      _$chatinitial _value, $Res Function(_$chatinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$chatinitial implements chatinitial {
  const _$chatinitial();

  @override
  String toString() {
    return 'ChatState.chatinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$chatinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatinitial,
    required TResult Function(QuerySnapshot<Map<String, dynamic>> queries)
        displayChats,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        displayEachChats,
  }) {
    return chatinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatinitial,
    TResult? Function(QuerySnapshot<Map<String, dynamic>> queries)?
        displayChats,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        displayEachChats,
  }) {
    return chatinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatinitial,
    TResult Function(QuerySnapshot<Map<String, dynamic>> queries)? displayChats,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        displayEachChats,
    required TResult orElse(),
  }) {
    if (chatinitial != null) {
      return chatinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(chatinitial value) chatinitial,
    required TResult Function(displayChats value) displayChats,
    required TResult Function(displayEachChats value) displayEachChats,
  }) {
    return chatinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(chatinitial value)? chatinitial,
    TResult? Function(displayChats value)? displayChats,
    TResult? Function(displayEachChats value)? displayEachChats,
  }) {
    return chatinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(chatinitial value)? chatinitial,
    TResult Function(displayChats value)? displayChats,
    TResult Function(displayEachChats value)? displayEachChats,
    required TResult orElse(),
  }) {
    if (chatinitial != null) {
      return chatinitial(this);
    }
    return orElse();
  }
}

abstract class chatinitial implements ChatState {
  const factory chatinitial() = _$chatinitial;
}

/// @nodoc
abstract class _$$displayChatsCopyWith<$Res> {
  factory _$$displayChatsCopyWith(
          _$displayChats value, $Res Function(_$displayChats) then) =
      __$$displayChatsCopyWithImpl<$Res>;
  @useResult
  $Res call({QuerySnapshot<Map<String, dynamic>> queries});
}

/// @nodoc
class __$$displayChatsCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$displayChats>
    implements _$$displayChatsCopyWith<$Res> {
  __$$displayChatsCopyWithImpl(
      _$displayChats _value, $Res Function(_$displayChats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queries = null,
  }) {
    return _then(_$displayChats(
      queries: null == queries
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as QuerySnapshot<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$displayChats implements displayChats {
  const _$displayChats({required this.queries});

  @override
  final QuerySnapshot<Map<String, dynamic>> queries;

  @override
  String toString() {
    return 'ChatState.displayChats(queries: $queries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayChats &&
            (identical(other.queries, queries) || other.queries == queries));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayChatsCopyWith<_$displayChats> get copyWith =>
      __$$displayChatsCopyWithImpl<_$displayChats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatinitial,
    required TResult Function(QuerySnapshot<Map<String, dynamic>> queries)
        displayChats,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        displayEachChats,
  }) {
    return displayChats(queries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatinitial,
    TResult? Function(QuerySnapshot<Map<String, dynamic>> queries)?
        displayChats,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        displayEachChats,
  }) {
    return displayChats?.call(queries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatinitial,
    TResult Function(QuerySnapshot<Map<String, dynamic>> queries)? displayChats,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        displayEachChats,
    required TResult orElse(),
  }) {
    if (displayChats != null) {
      return displayChats(queries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(chatinitial value) chatinitial,
    required TResult Function(displayChats value) displayChats,
    required TResult Function(displayEachChats value) displayEachChats,
  }) {
    return displayChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(chatinitial value)? chatinitial,
    TResult? Function(displayChats value)? displayChats,
    TResult? Function(displayEachChats value)? displayEachChats,
  }) {
    return displayChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(chatinitial value)? chatinitial,
    TResult Function(displayChats value)? displayChats,
    TResult Function(displayEachChats value)? displayEachChats,
    required TResult orElse(),
  }) {
    if (displayChats != null) {
      return displayChats(this);
    }
    return orElse();
  }
}

abstract class displayChats implements ChatState {
  const factory displayChats(
          {required final QuerySnapshot<Map<String, dynamic>> queries}) =
      _$displayChats;

  QuerySnapshot<Map<String, dynamic>> get queries;
  @JsonKey(ignore: true)
  _$$displayChatsCopyWith<_$displayChats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$displayEachChatsCopyWith<$Res> {
  factory _$$displayEachChatsCopyWith(
          _$displayEachChats value, $Res Function(_$displayEachChats) then) =
      __$$displayEachChatsCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentSnapshot<Map<String, dynamic>> docs});
}

/// @nodoc
class __$$displayEachChatsCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$displayEachChats>
    implements _$$displayEachChatsCopyWith<$Res> {
  __$$displayEachChatsCopyWithImpl(
      _$displayEachChats _value, $Res Function(_$displayEachChats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
  }) {
    return _then(_$displayEachChats(
      docs: null == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as DocumentSnapshot<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$displayEachChats implements displayEachChats {
  const _$displayEachChats({required this.docs});

  @override
  final DocumentSnapshot<Map<String, dynamic>> docs;

  @override
  String toString() {
    return 'ChatState.displayEachChats(docs: $docs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayEachChats &&
            (identical(other.docs, docs) || other.docs == docs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayEachChatsCopyWith<_$displayEachChats> get copyWith =>
      __$$displayEachChatsCopyWithImpl<_$displayEachChats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatinitial,
    required TResult Function(QuerySnapshot<Map<String, dynamic>> queries)
        displayChats,
    required TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)
        displayEachChats,
  }) {
    return displayEachChats(docs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatinitial,
    TResult? Function(QuerySnapshot<Map<String, dynamic>> queries)?
        displayChats,
    TResult? Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        displayEachChats,
  }) {
    return displayEachChats?.call(docs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatinitial,
    TResult Function(QuerySnapshot<Map<String, dynamic>> queries)? displayChats,
    TResult Function(DocumentSnapshot<Map<String, dynamic>> docs)?
        displayEachChats,
    required TResult orElse(),
  }) {
    if (displayEachChats != null) {
      return displayEachChats(docs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(chatinitial value) chatinitial,
    required TResult Function(displayChats value) displayChats,
    required TResult Function(displayEachChats value) displayEachChats,
  }) {
    return displayEachChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(chatinitial value)? chatinitial,
    TResult? Function(displayChats value)? displayChats,
    TResult? Function(displayEachChats value)? displayEachChats,
  }) {
    return displayEachChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(chatinitial value)? chatinitial,
    TResult Function(displayChats value)? displayChats,
    TResult Function(displayEachChats value)? displayEachChats,
    required TResult orElse(),
  }) {
    if (displayEachChats != null) {
      return displayEachChats(this);
    }
    return orElse();
  }
}

abstract class displayEachChats implements ChatState {
  const factory displayEachChats(
          {required final DocumentSnapshot<Map<String, dynamic>> docs}) =
      _$displayEachChats;

  DocumentSnapshot<Map<String, dynamic>> get docs;
  @JsonKey(ignore: true)
  _$$displayEachChatsCopyWith<_$displayEachChats> get copyWith =>
      throw _privateConstructorUsedError;
}
