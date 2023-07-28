// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_follow_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckFollowEvent {
  String get visitingUserId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String visitingUserId) checkingFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String visitingUserId)? checkingFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String visitingUserId)? checkingFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(checkingFollowed value) checkingFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkingFollowed value)? checkingFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkingFollowed value)? checkingFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckFollowEventCopyWith<CheckFollowEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckFollowEventCopyWith<$Res> {
  factory $CheckFollowEventCopyWith(
          CheckFollowEvent value, $Res Function(CheckFollowEvent) then) =
      _$CheckFollowEventCopyWithImpl<$Res, CheckFollowEvent>;
  @useResult
  $Res call({String visitingUserId});
}

/// @nodoc
class _$CheckFollowEventCopyWithImpl<$Res, $Val extends CheckFollowEvent>
    implements $CheckFollowEventCopyWith<$Res> {
  _$CheckFollowEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitingUserId = null,
  }) {
    return _then(_value.copyWith(
      visitingUserId: null == visitingUserId
          ? _value.visitingUserId
          : visitingUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$checkingFollowedCopyWith<$Res>
    implements $CheckFollowEventCopyWith<$Res> {
  factory _$$checkingFollowedCopyWith(
          _$checkingFollowed value, $Res Function(_$checkingFollowed) then) =
      __$$checkingFollowedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String visitingUserId});
}

/// @nodoc
class __$$checkingFollowedCopyWithImpl<$Res>
    extends _$CheckFollowEventCopyWithImpl<$Res, _$checkingFollowed>
    implements _$$checkingFollowedCopyWith<$Res> {
  __$$checkingFollowedCopyWithImpl(
      _$checkingFollowed _value, $Res Function(_$checkingFollowed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitingUserId = null,
  }) {
    return _then(_$checkingFollowed(
      visitingUserId: null == visitingUserId
          ? _value.visitingUserId
          : visitingUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$checkingFollowed implements checkingFollowed {
  const _$checkingFollowed({required this.visitingUserId});

  @override
  final String visitingUserId;

  @override
  String toString() {
    return 'CheckFollowEvent.checkingFollowed(visitingUserId: $visitingUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$checkingFollowed &&
            (identical(other.visitingUserId, visitingUserId) ||
                other.visitingUserId == visitingUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitingUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$checkingFollowedCopyWith<_$checkingFollowed> get copyWith =>
      __$$checkingFollowedCopyWithImpl<_$checkingFollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String visitingUserId) checkingFollowed,
  }) {
    return checkingFollowed(visitingUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String visitingUserId)? checkingFollowed,
  }) {
    return checkingFollowed?.call(visitingUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String visitingUserId)? checkingFollowed,
    required TResult orElse(),
  }) {
    if (checkingFollowed != null) {
      return checkingFollowed(visitingUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(checkingFollowed value) checkingFollowed,
  }) {
    return checkingFollowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkingFollowed value)? checkingFollowed,
  }) {
    return checkingFollowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkingFollowed value)? checkingFollowed,
    required TResult orElse(),
  }) {
    if (checkingFollowed != null) {
      return checkingFollowed(this);
    }
    return orElse();
  }
}

abstract class checkingFollowed implements CheckFollowEvent {
  const factory checkingFollowed({required final String visitingUserId}) =
      _$checkingFollowed;

  @override
  String get visitingUserId;
  @override
  @JsonKey(ignore: true)
  _$$checkingFollowedCopyWith<_$checkingFollowed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckFollowState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkfollowinitial,
    required TResult Function(bool isFollowed) displayIsFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkfollowinitial,
    TResult? Function(bool isFollowed)? displayIsFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkfollowinitial,
    TResult Function(bool isFollowed)? displayIsFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(checkfollowinitial value) checkfollowinitial,
    required TResult Function(displayIsFollowed value) displayIsFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkfollowinitial value)? checkfollowinitial,
    TResult? Function(displayIsFollowed value)? displayIsFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkfollowinitial value)? checkfollowinitial,
    TResult Function(displayIsFollowed value)? displayIsFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckFollowStateCopyWith<$Res> {
  factory $CheckFollowStateCopyWith(
          CheckFollowState value, $Res Function(CheckFollowState) then) =
      _$CheckFollowStateCopyWithImpl<$Res, CheckFollowState>;
}

/// @nodoc
class _$CheckFollowStateCopyWithImpl<$Res, $Val extends CheckFollowState>
    implements $CheckFollowStateCopyWith<$Res> {
  _$CheckFollowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$checkfollowinitialCopyWith<$Res> {
  factory _$$checkfollowinitialCopyWith(_$checkfollowinitial value,
          $Res Function(_$checkfollowinitial) then) =
      __$$checkfollowinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkfollowinitialCopyWithImpl<$Res>
    extends _$CheckFollowStateCopyWithImpl<$Res, _$checkfollowinitial>
    implements _$$checkfollowinitialCopyWith<$Res> {
  __$$checkfollowinitialCopyWithImpl(
      _$checkfollowinitial _value, $Res Function(_$checkfollowinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$checkfollowinitial implements checkfollowinitial {
  const _$checkfollowinitial();

  @override
  String toString() {
    return 'CheckFollowState.checkfollowinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkfollowinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkfollowinitial,
    required TResult Function(bool isFollowed) displayIsFollowed,
  }) {
    return checkfollowinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkfollowinitial,
    TResult? Function(bool isFollowed)? displayIsFollowed,
  }) {
    return checkfollowinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkfollowinitial,
    TResult Function(bool isFollowed)? displayIsFollowed,
    required TResult orElse(),
  }) {
    if (checkfollowinitial != null) {
      return checkfollowinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(checkfollowinitial value) checkfollowinitial,
    required TResult Function(displayIsFollowed value) displayIsFollowed,
  }) {
    return checkfollowinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkfollowinitial value)? checkfollowinitial,
    TResult? Function(displayIsFollowed value)? displayIsFollowed,
  }) {
    return checkfollowinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkfollowinitial value)? checkfollowinitial,
    TResult Function(displayIsFollowed value)? displayIsFollowed,
    required TResult orElse(),
  }) {
    if (checkfollowinitial != null) {
      return checkfollowinitial(this);
    }
    return orElse();
  }
}

abstract class checkfollowinitial implements CheckFollowState {
  const factory checkfollowinitial() = _$checkfollowinitial;
}

/// @nodoc
abstract class _$$displayIsFollowedCopyWith<$Res> {
  factory _$$displayIsFollowedCopyWith(
          _$displayIsFollowed value, $Res Function(_$displayIsFollowed) then) =
      __$$displayIsFollowedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFollowed});
}

/// @nodoc
class __$$displayIsFollowedCopyWithImpl<$Res>
    extends _$CheckFollowStateCopyWithImpl<$Res, _$displayIsFollowed>
    implements _$$displayIsFollowedCopyWith<$Res> {
  __$$displayIsFollowedCopyWithImpl(
      _$displayIsFollowed _value, $Res Function(_$displayIsFollowed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFollowed = null,
  }) {
    return _then(_$displayIsFollowed(
      isFollowed: null == isFollowed
          ? _value.isFollowed
          : isFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$displayIsFollowed implements displayIsFollowed {
  const _$displayIsFollowed({required this.isFollowed});

  @override
  final bool isFollowed;

  @override
  String toString() {
    return 'CheckFollowState.displayIsFollowed(isFollowed: $isFollowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayIsFollowed &&
            (identical(other.isFollowed, isFollowed) ||
                other.isFollowed == isFollowed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFollowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayIsFollowedCopyWith<_$displayIsFollowed> get copyWith =>
      __$$displayIsFollowedCopyWithImpl<_$displayIsFollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkfollowinitial,
    required TResult Function(bool isFollowed) displayIsFollowed,
  }) {
    return displayIsFollowed(isFollowed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkfollowinitial,
    TResult? Function(bool isFollowed)? displayIsFollowed,
  }) {
    return displayIsFollowed?.call(isFollowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkfollowinitial,
    TResult Function(bool isFollowed)? displayIsFollowed,
    required TResult orElse(),
  }) {
    if (displayIsFollowed != null) {
      return displayIsFollowed(isFollowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(checkfollowinitial value) checkfollowinitial,
    required TResult Function(displayIsFollowed value) displayIsFollowed,
  }) {
    return displayIsFollowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(checkfollowinitial value)? checkfollowinitial,
    TResult? Function(displayIsFollowed value)? displayIsFollowed,
  }) {
    return displayIsFollowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(checkfollowinitial value)? checkfollowinitial,
    TResult Function(displayIsFollowed value)? displayIsFollowed,
    required TResult orElse(),
  }) {
    if (displayIsFollowed != null) {
      return displayIsFollowed(this);
    }
    return orElse();
  }
}

abstract class displayIsFollowed implements CheckFollowState {
  const factory displayIsFollowed({required final bool isFollowed}) =
      _$displayIsFollowed;

  bool get isFollowed;
  @JsonKey(ignore: true)
  _$$displayIsFollowedCopyWith<_$displayIsFollowed> get copyWith =>
      throw _privateConstructorUsedError;
}
