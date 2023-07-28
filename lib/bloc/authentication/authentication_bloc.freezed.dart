// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function() signup,
    required TResult Function() resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function()? signup,
    TResult? Function()? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function()? signup,
    TResult Function()? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(login value) login,
    required TResult Function(signup value) signup,
    required TResult Function(resetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(login value)? login,
    TResult? Function(signup value)? signup,
    TResult? Function(resetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(login value)? login,
    TResult Function(signup value)? signup,
    TResult Function(resetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loginCopyWith<$Res> {
  factory _$$loginCopyWith(_$login value, $Res Function(_$login) then) =
      __$$loginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class __$$loginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$login>
    implements _$$loginCopyWith<$Res> {
  __$$loginCopyWithImpl(_$login _value, $Res Function(_$login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$login(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$login implements login {
  const _$login(
      {required this.email, required this.password, required this.context});

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthenticationEvent.login(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginCopyWith<_$login> get copyWith =>
      __$$loginCopyWithImpl<_$login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function() signup,
    required TResult Function() resetPassword,
  }) {
    return login(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function()? signup,
    TResult? Function()? resetPassword,
  }) {
    return login?.call(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function()? signup,
    TResult Function()? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(login value) login,
    required TResult Function(signup value) signup,
    required TResult Function(resetPassword value) resetPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(login value)? login,
    TResult? Function(signup value)? signup,
    TResult? Function(resetPassword value)? resetPassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(login value)? login,
    TResult Function(signup value)? signup,
    TResult Function(resetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class login implements AuthenticationEvent {
  const factory login(
      {required final String email,
      required final String password,
      required final BuildContext context}) = _$login;

  String get email;
  String get password;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$loginCopyWith<_$login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$signupCopyWith<$Res> {
  factory _$$signupCopyWith(_$signup value, $Res Function(_$signup) then) =
      __$$signupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$signupCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$signup>
    implements _$$signupCopyWith<$Res> {
  __$$signupCopyWithImpl(_$signup _value, $Res Function(_$signup) _then)
      : super(_value, _then);
}

/// @nodoc

class _$signup implements signup {
  const _$signup();

  @override
  String toString() {
    return 'AuthenticationEvent.signup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$signup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function() signup,
    required TResult Function() resetPassword,
  }) {
    return signup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function()? signup,
    TResult? Function()? resetPassword,
  }) {
    return signup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function()? signup,
    TResult Function()? resetPassword,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(login value) login,
    required TResult Function(signup value) signup,
    required TResult Function(resetPassword value) resetPassword,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(login value)? login,
    TResult? Function(signup value)? signup,
    TResult? Function(resetPassword value)? resetPassword,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(login value)? login,
    TResult Function(signup value)? signup,
    TResult Function(resetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class signup implements AuthenticationEvent {
  const factory signup() = _$signup;
}

/// @nodoc
abstract class _$$resetPasswordCopyWith<$Res> {
  factory _$$resetPasswordCopyWith(
          _$resetPassword value, $Res Function(_$resetPassword) then) =
      __$$resetPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$resetPasswordCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$resetPassword>
    implements _$$resetPasswordCopyWith<$Res> {
  __$$resetPasswordCopyWithImpl(
      _$resetPassword _value, $Res Function(_$resetPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$resetPassword implements resetPassword {
  const _$resetPassword();

  @override
  String toString() {
    return 'AuthenticationEvent.resetPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$resetPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function() signup,
    required TResult Function() resetPassword,
  }) {
    return resetPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        login,
    TResult? Function()? signup,
    TResult? Function()? resetPassword,
  }) {
    return resetPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function()? signup,
    TResult Function()? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(login value) login,
    required TResult Function(signup value) signup,
    required TResult Function(resetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(login value)? login,
    TResult? Function(signup value)? signup,
    TResult? Function(resetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(login value)? login,
    TResult Function(signup value)? signup,
    TResult Function(resetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class resetPassword implements AuthenticationEvent {
  const factory resetPassword() = _$resetPassword;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticationinitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticationinitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticationinitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(authenticationinitial value)
        authenticationinitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(authenticationinitial value)? authenticationinitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(authenticationinitial value)? authenticationinitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$authenticationinitialCopyWith<$Res> {
  factory _$$authenticationinitialCopyWith(_$authenticationinitial value,
          $Res Function(_$authenticationinitial) then) =
      __$$authenticationinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$authenticationinitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$authenticationinitial>
    implements _$$authenticationinitialCopyWith<$Res> {
  __$$authenticationinitialCopyWithImpl(_$authenticationinitial _value,
      $Res Function(_$authenticationinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$authenticationinitial implements authenticationinitial {
  const _$authenticationinitial();

  @override
  String toString() {
    return 'AuthenticationState.authenticationinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$authenticationinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticationinitial,
  }) {
    return authenticationinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticationinitial,
  }) {
    return authenticationinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticationinitial,
    required TResult orElse(),
  }) {
    if (authenticationinitial != null) {
      return authenticationinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(authenticationinitial value)
        authenticationinitial,
  }) {
    return authenticationinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(authenticationinitial value)? authenticationinitial,
  }) {
    return authenticationinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(authenticationinitial value)? authenticationinitial,
    required TResult orElse(),
  }) {
    if (authenticationinitial != null) {
      return authenticationinitial(this);
    }
    return orElse();
  }
}

abstract class authenticationinitial implements AuthenticationState {
  const factory authenticationinitial() = _$authenticationinitial;
}
