// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visiting_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VisitingUserEvent {
  String get visitingUserId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String visitingUserId) showingVisitingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String visitingUserId)? showingVisitingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String visitingUserId)? showingVisitingUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(showingVisitingUser value) showingVisitingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(showingVisitingUser value)? showingVisitingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(showingVisitingUser value)? showingVisitingUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitingUserEventCopyWith<VisitingUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitingUserEventCopyWith<$Res> {
  factory $VisitingUserEventCopyWith(
          VisitingUserEvent value, $Res Function(VisitingUserEvent) then) =
      _$VisitingUserEventCopyWithImpl<$Res, VisitingUserEvent>;
  @useResult
  $Res call({String visitingUserId});
}

/// @nodoc
class _$VisitingUserEventCopyWithImpl<$Res, $Val extends VisitingUserEvent>
    implements $VisitingUserEventCopyWith<$Res> {
  _$VisitingUserEventCopyWithImpl(this._value, this._then);

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
abstract class _$$showingVisitingUserCopyWith<$Res>
    implements $VisitingUserEventCopyWith<$Res> {
  factory _$$showingVisitingUserCopyWith(_$showingVisitingUser value,
          $Res Function(_$showingVisitingUser) then) =
      __$$showingVisitingUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String visitingUserId});
}

/// @nodoc
class __$$showingVisitingUserCopyWithImpl<$Res>
    extends _$VisitingUserEventCopyWithImpl<$Res, _$showingVisitingUser>
    implements _$$showingVisitingUserCopyWith<$Res> {
  __$$showingVisitingUserCopyWithImpl(
      _$showingVisitingUser _value, $Res Function(_$showingVisitingUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitingUserId = null,
  }) {
    return _then(_$showingVisitingUser(
      visitingUserId: null == visitingUserId
          ? _value.visitingUserId
          : visitingUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$showingVisitingUser implements showingVisitingUser {
  const _$showingVisitingUser({required this.visitingUserId});

  @override
  final String visitingUserId;

  @override
  String toString() {
    return 'VisitingUserEvent.showingVisitingUser(visitingUserId: $visitingUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$showingVisitingUser &&
            (identical(other.visitingUserId, visitingUserId) ||
                other.visitingUserId == visitingUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitingUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$showingVisitingUserCopyWith<_$showingVisitingUser> get copyWith =>
      __$$showingVisitingUserCopyWithImpl<_$showingVisitingUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String visitingUserId) showingVisitingUser,
  }) {
    return showingVisitingUser(visitingUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String visitingUserId)? showingVisitingUser,
  }) {
    return showingVisitingUser?.call(visitingUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String visitingUserId)? showingVisitingUser,
    required TResult orElse(),
  }) {
    if (showingVisitingUser != null) {
      return showingVisitingUser(visitingUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(showingVisitingUser value) showingVisitingUser,
  }) {
    return showingVisitingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(showingVisitingUser value)? showingVisitingUser,
  }) {
    return showingVisitingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(showingVisitingUser value)? showingVisitingUser,
    required TResult orElse(),
  }) {
    if (showingVisitingUser != null) {
      return showingVisitingUser(this);
    }
    return orElse();
  }
}

abstract class showingVisitingUser implements VisitingUserEvent {
  const factory showingVisitingUser({required final String visitingUserId}) =
      _$showingVisitingUser;

  @override
  String get visitingUserId;
  @override
  @JsonKey(ignore: true)
  _$$showingVisitingUserCopyWith<_$showingVisitingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VisitingUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visitinguserinitial,
    required TResult Function(UserProfile userData) displayVisitingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visitinguserinitial,
    TResult? Function(UserProfile userData)? displayVisitingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visitinguserinitial,
    TResult Function(UserProfile userData)? displayVisitingUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(visitinguserinitial value) visitinguserinitial,
    required TResult Function(displayVisitingUser value) displayVisitingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(visitinguserinitial value)? visitinguserinitial,
    TResult? Function(displayVisitingUser value)? displayVisitingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(visitinguserinitial value)? visitinguserinitial,
    TResult Function(displayVisitingUser value)? displayVisitingUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitingUserStateCopyWith<$Res> {
  factory $VisitingUserStateCopyWith(
          VisitingUserState value, $Res Function(VisitingUserState) then) =
      _$VisitingUserStateCopyWithImpl<$Res, VisitingUserState>;
}

/// @nodoc
class _$VisitingUserStateCopyWithImpl<$Res, $Val extends VisitingUserState>
    implements $VisitingUserStateCopyWith<$Res> {
  _$VisitingUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$visitinguserinitialCopyWith<$Res> {
  factory _$$visitinguserinitialCopyWith(_$visitinguserinitial value,
          $Res Function(_$visitinguserinitial) then) =
      __$$visitinguserinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$visitinguserinitialCopyWithImpl<$Res>
    extends _$VisitingUserStateCopyWithImpl<$Res, _$visitinguserinitial>
    implements _$$visitinguserinitialCopyWith<$Res> {
  __$$visitinguserinitialCopyWithImpl(
      _$visitinguserinitial _value, $Res Function(_$visitinguserinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$visitinguserinitial implements visitinguserinitial {
  const _$visitinguserinitial();

  @override
  String toString() {
    return 'VisitingUserState.visitinguserinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$visitinguserinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visitinguserinitial,
    required TResult Function(UserProfile userData) displayVisitingUser,
  }) {
    return visitinguserinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visitinguserinitial,
    TResult? Function(UserProfile userData)? displayVisitingUser,
  }) {
    return visitinguserinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visitinguserinitial,
    TResult Function(UserProfile userData)? displayVisitingUser,
    required TResult orElse(),
  }) {
    if (visitinguserinitial != null) {
      return visitinguserinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(visitinguserinitial value) visitinguserinitial,
    required TResult Function(displayVisitingUser value) displayVisitingUser,
  }) {
    return visitinguserinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(visitinguserinitial value)? visitinguserinitial,
    TResult? Function(displayVisitingUser value)? displayVisitingUser,
  }) {
    return visitinguserinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(visitinguserinitial value)? visitinguserinitial,
    TResult Function(displayVisitingUser value)? displayVisitingUser,
    required TResult orElse(),
  }) {
    if (visitinguserinitial != null) {
      return visitinguserinitial(this);
    }
    return orElse();
  }
}

abstract class visitinguserinitial implements VisitingUserState {
  const factory visitinguserinitial() = _$visitinguserinitial;
}

/// @nodoc
abstract class _$$displayVisitingUserCopyWith<$Res> {
  factory _$$displayVisitingUserCopyWith(_$displayVisitingUser value,
          $Res Function(_$displayVisitingUser) then) =
      __$$displayVisitingUserCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile userData});
}

/// @nodoc
class __$$displayVisitingUserCopyWithImpl<$Res>
    extends _$VisitingUserStateCopyWithImpl<$Res, _$displayVisitingUser>
    implements _$$displayVisitingUserCopyWith<$Res> {
  __$$displayVisitingUserCopyWithImpl(
      _$displayVisitingUser _value, $Res Function(_$displayVisitingUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$displayVisitingUser(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }
}

/// @nodoc

class _$displayVisitingUser implements displayVisitingUser {
  const _$displayVisitingUser({required this.userData});

  @override
  final UserProfile userData;

  @override
  String toString() {
    return 'VisitingUserState.displayVisitingUser(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayVisitingUser &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayVisitingUserCopyWith<_$displayVisitingUser> get copyWith =>
      __$$displayVisitingUserCopyWithImpl<_$displayVisitingUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() visitinguserinitial,
    required TResult Function(UserProfile userData) displayVisitingUser,
  }) {
    return displayVisitingUser(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? visitinguserinitial,
    TResult? Function(UserProfile userData)? displayVisitingUser,
  }) {
    return displayVisitingUser?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? visitinguserinitial,
    TResult Function(UserProfile userData)? displayVisitingUser,
    required TResult orElse(),
  }) {
    if (displayVisitingUser != null) {
      return displayVisitingUser(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(visitinguserinitial value) visitinguserinitial,
    required TResult Function(displayVisitingUser value) displayVisitingUser,
  }) {
    return displayVisitingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(visitinguserinitial value)? visitinguserinitial,
    TResult? Function(displayVisitingUser value)? displayVisitingUser,
  }) {
    return displayVisitingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(visitinguserinitial value)? visitinguserinitial,
    TResult Function(displayVisitingUser value)? displayVisitingUser,
    required TResult orElse(),
  }) {
    if (displayVisitingUser != null) {
      return displayVisitingUser(this);
    }
    return orElse();
  }
}

abstract class displayVisitingUser implements VisitingUserState {
  const factory displayVisitingUser({required final UserProfile userData}) =
      _$displayVisitingUser;

  UserProfile get userData;
  @JsonKey(ignore: true)
  _$$displayVisitingUserCopyWith<_$displayVisitingUser> get copyWith =>
      throw _privateConstructorUsedError;
}
