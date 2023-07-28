// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String userEmail) addingUserName,
    required TResult Function() showingUser,
    required TResult Function(UserProfile userDetails) addingUserProfileDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String userEmail)? addingUserName,
    TResult? Function()? showingUser,
    TResult? Function(UserProfile userDetails)? addingUserProfileDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String userEmail)? addingUserName,
    TResult Function()? showingUser,
    TResult Function(UserProfile userDetails)? addingUserProfileDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addingUserName value) addingUserName,
    required TResult Function(showingUser value) showingUser,
    required TResult Function(addingUserProfileDetails value)
        addingUserProfileDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addingUserName value)? addingUserName,
    TResult? Function(showingUser value)? showingUser,
    TResult? Function(addingUserProfileDetails value)? addingUserProfileDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addingUserName value)? addingUserName,
    TResult Function(showingUser value)? showingUser,
    TResult Function(addingUserProfileDetails value)? addingUserProfileDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addingUserNameCopyWith<$Res> {
  factory _$$addingUserNameCopyWith(
          _$addingUserName value, $Res Function(_$addingUserName) then) =
      __$$addingUserNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String userEmail});
}

/// @nodoc
class __$$addingUserNameCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$addingUserName>
    implements _$$addingUserNameCopyWith<$Res> {
  __$$addingUserNameCopyWithImpl(
      _$addingUserName _value, $Res Function(_$addingUserName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userEmail = null,
  }) {
    return _then(_$addingUserName(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addingUserName implements addingUserName {
  const _$addingUserName({required this.userName, required this.userEmail});

  @override
  final String userName;
  @override
  final String userEmail;

  @override
  String toString() {
    return 'UserEvent.addingUserName(userName: $userName, userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addingUserName &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, userEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addingUserNameCopyWith<_$addingUserName> get copyWith =>
      __$$addingUserNameCopyWithImpl<_$addingUserName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String userEmail) addingUserName,
    required TResult Function() showingUser,
    required TResult Function(UserProfile userDetails) addingUserProfileDetails,
  }) {
    return addingUserName(userName, userEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String userEmail)? addingUserName,
    TResult? Function()? showingUser,
    TResult? Function(UserProfile userDetails)? addingUserProfileDetails,
  }) {
    return addingUserName?.call(userName, userEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String userEmail)? addingUserName,
    TResult Function()? showingUser,
    TResult Function(UserProfile userDetails)? addingUserProfileDetails,
    required TResult orElse(),
  }) {
    if (addingUserName != null) {
      return addingUserName(userName, userEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addingUserName value) addingUserName,
    required TResult Function(showingUser value) showingUser,
    required TResult Function(addingUserProfileDetails value)
        addingUserProfileDetails,
  }) {
    return addingUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addingUserName value)? addingUserName,
    TResult? Function(showingUser value)? showingUser,
    TResult? Function(addingUserProfileDetails value)? addingUserProfileDetails,
  }) {
    return addingUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addingUserName value)? addingUserName,
    TResult Function(showingUser value)? showingUser,
    TResult Function(addingUserProfileDetails value)? addingUserProfileDetails,
    required TResult orElse(),
  }) {
    if (addingUserName != null) {
      return addingUserName(this);
    }
    return orElse();
  }
}

abstract class addingUserName implements UserEvent {
  const factory addingUserName(
      {required final String userName,
      required final String userEmail}) = _$addingUserName;

  String get userName;
  String get userEmail;
  @JsonKey(ignore: true)
  _$$addingUserNameCopyWith<_$addingUserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$showingUserCopyWith<$Res> {
  factory _$$showingUserCopyWith(
          _$showingUser value, $Res Function(_$showingUser) then) =
      __$$showingUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$showingUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$showingUser>
    implements _$$showingUserCopyWith<$Res> {
  __$$showingUserCopyWithImpl(
      _$showingUser _value, $Res Function(_$showingUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$showingUser implements showingUser {
  const _$showingUser();

  @override
  String toString() {
    return 'UserEvent.showingUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$showingUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String userEmail) addingUserName,
    required TResult Function() showingUser,
    required TResult Function(UserProfile userDetails) addingUserProfileDetails,
  }) {
    return showingUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String userEmail)? addingUserName,
    TResult? Function()? showingUser,
    TResult? Function(UserProfile userDetails)? addingUserProfileDetails,
  }) {
    return showingUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String userEmail)? addingUserName,
    TResult Function()? showingUser,
    TResult Function(UserProfile userDetails)? addingUserProfileDetails,
    required TResult orElse(),
  }) {
    if (showingUser != null) {
      return showingUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addingUserName value) addingUserName,
    required TResult Function(showingUser value) showingUser,
    required TResult Function(addingUserProfileDetails value)
        addingUserProfileDetails,
  }) {
    return showingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addingUserName value)? addingUserName,
    TResult? Function(showingUser value)? showingUser,
    TResult? Function(addingUserProfileDetails value)? addingUserProfileDetails,
  }) {
    return showingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addingUserName value)? addingUserName,
    TResult Function(showingUser value)? showingUser,
    TResult Function(addingUserProfileDetails value)? addingUserProfileDetails,
    required TResult orElse(),
  }) {
    if (showingUser != null) {
      return showingUser(this);
    }
    return orElse();
  }
}

abstract class showingUser implements UserEvent {
  const factory showingUser() = _$showingUser;
}

/// @nodoc
abstract class _$$addingUserProfileDetailsCopyWith<$Res> {
  factory _$$addingUserProfileDetailsCopyWith(_$addingUserProfileDetails value,
          $Res Function(_$addingUserProfileDetails) then) =
      __$$addingUserProfileDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile userDetails});
}

/// @nodoc
class __$$addingUserProfileDetailsCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$addingUserProfileDetails>
    implements _$$addingUserProfileDetailsCopyWith<$Res> {
  __$$addingUserProfileDetailsCopyWithImpl(_$addingUserProfileDetails _value,
      $Res Function(_$addingUserProfileDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = null,
  }) {
    return _then(_$addingUserProfileDetails(
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }
}

/// @nodoc

class _$addingUserProfileDetails implements addingUserProfileDetails {
  const _$addingUserProfileDetails({required this.userDetails});

  @override
  final UserProfile userDetails;

  @override
  String toString() {
    return 'UserEvent.addingUserProfileDetails(userDetails: $userDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addingUserProfileDetails &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addingUserProfileDetailsCopyWith<_$addingUserProfileDetails>
      get copyWith =>
          __$$addingUserProfileDetailsCopyWithImpl<_$addingUserProfileDetails>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String userEmail) addingUserName,
    required TResult Function() showingUser,
    required TResult Function(UserProfile userDetails) addingUserProfileDetails,
  }) {
    return addingUserProfileDetails(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String userEmail)? addingUserName,
    TResult? Function()? showingUser,
    TResult? Function(UserProfile userDetails)? addingUserProfileDetails,
  }) {
    return addingUserProfileDetails?.call(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String userEmail)? addingUserName,
    TResult Function()? showingUser,
    TResult Function(UserProfile userDetails)? addingUserProfileDetails,
    required TResult orElse(),
  }) {
    if (addingUserProfileDetails != null) {
      return addingUserProfileDetails(userDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addingUserName value) addingUserName,
    required TResult Function(showingUser value) showingUser,
    required TResult Function(addingUserProfileDetails value)
        addingUserProfileDetails,
  }) {
    return addingUserProfileDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addingUserName value)? addingUserName,
    TResult? Function(showingUser value)? showingUser,
    TResult? Function(addingUserProfileDetails value)? addingUserProfileDetails,
  }) {
    return addingUserProfileDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addingUserName value)? addingUserName,
    TResult Function(showingUser value)? showingUser,
    TResult Function(addingUserProfileDetails value)? addingUserProfileDetails,
    required TResult orElse(),
  }) {
    if (addingUserProfileDetails != null) {
      return addingUserProfileDetails(this);
    }
    return orElse();
  }
}

abstract class addingUserProfileDetails implements UserEvent {
  const factory addingUserProfileDetails(
      {required final UserProfile userDetails}) = _$addingUserProfileDetails;

  UserProfile get userDetails;
  @JsonKey(ignore: true)
  _$$addingUserProfileDetailsCopyWith<_$addingUserProfileDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userinitial,
    required TResult Function(UserProfile userData) displayUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userinitial,
    TResult? Function(UserProfile userData)? displayUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userinitial,
    TResult Function(UserProfile userData)? displayUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(userinitial value) userinitial,
    required TResult Function(displayUser value) displayUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(userinitial value)? userinitial,
    TResult? Function(displayUser value)? displayUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(userinitial value)? userinitial,
    TResult Function(displayUser value)? displayUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$userinitialCopyWith<$Res> {
  factory _$$userinitialCopyWith(
          _$userinitial value, $Res Function(_$userinitial) then) =
      __$$userinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userinitialCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$userinitial>
    implements _$$userinitialCopyWith<$Res> {
  __$$userinitialCopyWithImpl(
      _$userinitial _value, $Res Function(_$userinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$userinitial implements userinitial {
  const _$userinitial();

  @override
  String toString() {
    return 'UserState.userinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userinitial,
    required TResult Function(UserProfile userData) displayUser,
  }) {
    return userinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userinitial,
    TResult? Function(UserProfile userData)? displayUser,
  }) {
    return userinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userinitial,
    TResult Function(UserProfile userData)? displayUser,
    required TResult orElse(),
  }) {
    if (userinitial != null) {
      return userinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(userinitial value) userinitial,
    required TResult Function(displayUser value) displayUser,
  }) {
    return userinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(userinitial value)? userinitial,
    TResult? Function(displayUser value)? displayUser,
  }) {
    return userinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(userinitial value)? userinitial,
    TResult Function(displayUser value)? displayUser,
    required TResult orElse(),
  }) {
    if (userinitial != null) {
      return userinitial(this);
    }
    return orElse();
  }
}

abstract class userinitial implements UserState {
  const factory userinitial() = _$userinitial;
}

/// @nodoc
abstract class _$$displayUserCopyWith<$Res> {
  factory _$$displayUserCopyWith(
          _$displayUser value, $Res Function(_$displayUser) then) =
      __$$displayUserCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile userData});
}

/// @nodoc
class __$$displayUserCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$displayUser>
    implements _$$displayUserCopyWith<$Res> {
  __$$displayUserCopyWithImpl(
      _$displayUser _value, $Res Function(_$displayUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$displayUser(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }
}

/// @nodoc

class _$displayUser implements displayUser {
  const _$displayUser({required this.userData});

  @override
  final UserProfile userData;

  @override
  String toString() {
    return 'UserState.displayUser(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayUser &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayUserCopyWith<_$displayUser> get copyWith =>
      __$$displayUserCopyWithImpl<_$displayUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userinitial,
    required TResult Function(UserProfile userData) displayUser,
  }) {
    return displayUser(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userinitial,
    TResult? Function(UserProfile userData)? displayUser,
  }) {
    return displayUser?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userinitial,
    TResult Function(UserProfile userData)? displayUser,
    required TResult orElse(),
  }) {
    if (displayUser != null) {
      return displayUser(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(userinitial value) userinitial,
    required TResult Function(displayUser value) displayUser,
  }) {
    return displayUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(userinitial value)? userinitial,
    TResult? Function(displayUser value)? displayUser,
  }) {
    return displayUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(userinitial value)? userinitial,
    TResult Function(displayUser value)? displayUser,
    required TResult orElse(),
  }) {
    if (displayUser != null) {
      return displayUser(this);
    }
    return orElse();
  }
}

abstract class displayUser implements UserState {
  const factory displayUser({required final UserProfile userData}) =
      _$displayUser;

  UserProfile get userData;
  @JsonKey(ignore: true)
  _$$displayUserCopyWith<_$displayUser> get copyWith =>
      throw _privateConstructorUsedError;
}
