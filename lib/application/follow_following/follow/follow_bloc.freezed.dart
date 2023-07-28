// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FollowEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) addingFollow,
    required TResult Function(String userId) removingFollow,
    required TResult Function() gettingFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? addingFollow,
    TResult? Function(String userId)? removingFollow,
    TResult? Function()? gettingFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? addingFollow,
    TResult Function(String userId)? removingFollow,
    TResult Function()? gettingFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addingFollow value) addingFollow,
    required TResult Function(removingFollow value) removingFollow,
    required TResult Function(gettingFollow value) gettingFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addingFollow value)? addingFollow,
    TResult? Function(removingFollow value)? removingFollow,
    TResult? Function(gettingFollow value)? gettingFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addingFollow value)? addingFollow,
    TResult Function(removingFollow value)? removingFollow,
    TResult Function(gettingFollow value)? gettingFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowEventCopyWith<$Res> {
  factory $FollowEventCopyWith(
          FollowEvent value, $Res Function(FollowEvent) then) =
      _$FollowEventCopyWithImpl<$Res, FollowEvent>;
}

/// @nodoc
class _$FollowEventCopyWithImpl<$Res, $Val extends FollowEvent>
    implements $FollowEventCopyWith<$Res> {
  _$FollowEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addingFollowCopyWith<$Res> {
  factory _$$addingFollowCopyWith(
          _$addingFollow value, $Res Function(_$addingFollow) then) =
      __$$addingFollowCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$addingFollowCopyWithImpl<$Res>
    extends _$FollowEventCopyWithImpl<$Res, _$addingFollow>
    implements _$$addingFollowCopyWith<$Res> {
  __$$addingFollowCopyWithImpl(
      _$addingFollow _value, $Res Function(_$addingFollow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$addingFollow(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addingFollow implements addingFollow {
  const _$addingFollow({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'FollowEvent.addingFollow(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addingFollow &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addingFollowCopyWith<_$addingFollow> get copyWith =>
      __$$addingFollowCopyWithImpl<_$addingFollow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) addingFollow,
    required TResult Function(String userId) removingFollow,
    required TResult Function() gettingFollow,
  }) {
    return addingFollow(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? addingFollow,
    TResult? Function(String userId)? removingFollow,
    TResult? Function()? gettingFollow,
  }) {
    return addingFollow?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? addingFollow,
    TResult Function(String userId)? removingFollow,
    TResult Function()? gettingFollow,
    required TResult orElse(),
  }) {
    if (addingFollow != null) {
      return addingFollow(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addingFollow value) addingFollow,
    required TResult Function(removingFollow value) removingFollow,
    required TResult Function(gettingFollow value) gettingFollow,
  }) {
    return addingFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addingFollow value)? addingFollow,
    TResult? Function(removingFollow value)? removingFollow,
    TResult? Function(gettingFollow value)? gettingFollow,
  }) {
    return addingFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addingFollow value)? addingFollow,
    TResult Function(removingFollow value)? removingFollow,
    TResult Function(gettingFollow value)? gettingFollow,
    required TResult orElse(),
  }) {
    if (addingFollow != null) {
      return addingFollow(this);
    }
    return orElse();
  }
}

abstract class addingFollow implements FollowEvent {
  const factory addingFollow({required final String userId}) = _$addingFollow;

  String get userId;
  @JsonKey(ignore: true)
  _$$addingFollowCopyWith<_$addingFollow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$removingFollowCopyWith<$Res> {
  factory _$$removingFollowCopyWith(
          _$removingFollow value, $Res Function(_$removingFollow) then) =
      __$$removingFollowCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$removingFollowCopyWithImpl<$Res>
    extends _$FollowEventCopyWithImpl<$Res, _$removingFollow>
    implements _$$removingFollowCopyWith<$Res> {
  __$$removingFollowCopyWithImpl(
      _$removingFollow _value, $Res Function(_$removingFollow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$removingFollow(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$removingFollow implements removingFollow {
  const _$removingFollow({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'FollowEvent.removingFollow(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$removingFollow &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$removingFollowCopyWith<_$removingFollow> get copyWith =>
      __$$removingFollowCopyWithImpl<_$removingFollow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) addingFollow,
    required TResult Function(String userId) removingFollow,
    required TResult Function() gettingFollow,
  }) {
    return removingFollow(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? addingFollow,
    TResult? Function(String userId)? removingFollow,
    TResult? Function()? gettingFollow,
  }) {
    return removingFollow?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? addingFollow,
    TResult Function(String userId)? removingFollow,
    TResult Function()? gettingFollow,
    required TResult orElse(),
  }) {
    if (removingFollow != null) {
      return removingFollow(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addingFollow value) addingFollow,
    required TResult Function(removingFollow value) removingFollow,
    required TResult Function(gettingFollow value) gettingFollow,
  }) {
    return removingFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addingFollow value)? addingFollow,
    TResult? Function(removingFollow value)? removingFollow,
    TResult? Function(gettingFollow value)? gettingFollow,
  }) {
    return removingFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addingFollow value)? addingFollow,
    TResult Function(removingFollow value)? removingFollow,
    TResult Function(gettingFollow value)? gettingFollow,
    required TResult orElse(),
  }) {
    if (removingFollow != null) {
      return removingFollow(this);
    }
    return orElse();
  }
}

abstract class removingFollow implements FollowEvent {
  const factory removingFollow({required final String userId}) =
      _$removingFollow;

  String get userId;
  @JsonKey(ignore: true)
  _$$removingFollowCopyWith<_$removingFollow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$gettingFollowCopyWith<$Res> {
  factory _$$gettingFollowCopyWith(
          _$gettingFollow value, $Res Function(_$gettingFollow) then) =
      __$$gettingFollowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$gettingFollowCopyWithImpl<$Res>
    extends _$FollowEventCopyWithImpl<$Res, _$gettingFollow>
    implements _$$gettingFollowCopyWith<$Res> {
  __$$gettingFollowCopyWithImpl(
      _$gettingFollow _value, $Res Function(_$gettingFollow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$gettingFollow implements gettingFollow {
  const _$gettingFollow();

  @override
  String toString() {
    return 'FollowEvent.gettingFollow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$gettingFollow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) addingFollow,
    required TResult Function(String userId) removingFollow,
    required TResult Function() gettingFollow,
  }) {
    return gettingFollow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? addingFollow,
    TResult? Function(String userId)? removingFollow,
    TResult? Function()? gettingFollow,
  }) {
    return gettingFollow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? addingFollow,
    TResult Function(String userId)? removingFollow,
    TResult Function()? gettingFollow,
    required TResult orElse(),
  }) {
    if (gettingFollow != null) {
      return gettingFollow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(addingFollow value) addingFollow,
    required TResult Function(removingFollow value) removingFollow,
    required TResult Function(gettingFollow value) gettingFollow,
  }) {
    return gettingFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(addingFollow value)? addingFollow,
    TResult? Function(removingFollow value)? removingFollow,
    TResult? Function(gettingFollow value)? gettingFollow,
  }) {
    return gettingFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(addingFollow value)? addingFollow,
    TResult Function(removingFollow value)? removingFollow,
    TResult Function(gettingFollow value)? gettingFollow,
    required TResult orElse(),
  }) {
    if (gettingFollow != null) {
      return gettingFollow(this);
    }
    return orElse();
  }
}

abstract class gettingFollow implements FollowEvent {
  const factory gettingFollow() = _$gettingFollow;
}

/// @nodoc
mixin _$FollowState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() followinitial,
    required TResult Function(
            List<dynamic> followersList, List<dynamic> followingList)
        displayFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? followinitial,
    TResult? Function(List<dynamic> followersList, List<dynamic> followingList)?
        displayFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? followinitial,
    TResult Function(List<dynamic> followersList, List<dynamic> followingList)?
        displayFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(followinitial value) followinitial,
    required TResult Function(displayFollow value) displayFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(followinitial value)? followinitial,
    TResult? Function(displayFollow value)? displayFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(followinitial value)? followinitial,
    TResult Function(displayFollow value)? displayFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowStateCopyWith<$Res> {
  factory $FollowStateCopyWith(
          FollowState value, $Res Function(FollowState) then) =
      _$FollowStateCopyWithImpl<$Res, FollowState>;
}

/// @nodoc
class _$FollowStateCopyWithImpl<$Res, $Val extends FollowState>
    implements $FollowStateCopyWith<$Res> {
  _$FollowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$followinitialCopyWith<$Res> {
  factory _$$followinitialCopyWith(
          _$followinitial value, $Res Function(_$followinitial) then) =
      __$$followinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$followinitialCopyWithImpl<$Res>
    extends _$FollowStateCopyWithImpl<$Res, _$followinitial>
    implements _$$followinitialCopyWith<$Res> {
  __$$followinitialCopyWithImpl(
      _$followinitial _value, $Res Function(_$followinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$followinitial implements followinitial {
  const _$followinitial();

  @override
  String toString() {
    return 'FollowState.followinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$followinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() followinitial,
    required TResult Function(
            List<dynamic> followersList, List<dynamic> followingList)
        displayFollow,
  }) {
    return followinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? followinitial,
    TResult? Function(List<dynamic> followersList, List<dynamic> followingList)?
        displayFollow,
  }) {
    return followinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? followinitial,
    TResult Function(List<dynamic> followersList, List<dynamic> followingList)?
        displayFollow,
    required TResult orElse(),
  }) {
    if (followinitial != null) {
      return followinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(followinitial value) followinitial,
    required TResult Function(displayFollow value) displayFollow,
  }) {
    return followinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(followinitial value)? followinitial,
    TResult? Function(displayFollow value)? displayFollow,
  }) {
    return followinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(followinitial value)? followinitial,
    TResult Function(displayFollow value)? displayFollow,
    required TResult orElse(),
  }) {
    if (followinitial != null) {
      return followinitial(this);
    }
    return orElse();
  }
}

abstract class followinitial implements FollowState {
  const factory followinitial() = _$followinitial;
}

/// @nodoc
abstract class _$$displayFollowCopyWith<$Res> {
  factory _$$displayFollowCopyWith(
          _$displayFollow value, $Res Function(_$displayFollow) then) =
      __$$displayFollowCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> followersList, List<dynamic> followingList});
}

/// @nodoc
class __$$displayFollowCopyWithImpl<$Res>
    extends _$FollowStateCopyWithImpl<$Res, _$displayFollow>
    implements _$$displayFollowCopyWith<$Res> {
  __$$displayFollowCopyWithImpl(
      _$displayFollow _value, $Res Function(_$displayFollow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followersList = null,
    Object? followingList = null,
  }) {
    return _then(_$displayFollow(
      followersList: null == followersList
          ? _value._followersList
          : followersList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      followingList: null == followingList
          ? _value._followingList
          : followingList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$displayFollow implements displayFollow {
  const _$displayFollow(
      {required final List<dynamic> followersList,
      required final List<dynamic> followingList})
      : _followersList = followersList,
        _followingList = followingList;

  final List<dynamic> _followersList;
  @override
  List<dynamic> get followersList {
    if (_followersList is EqualUnmodifiableListView) return _followersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followersList);
  }

  final List<dynamic> _followingList;
  @override
  List<dynamic> get followingList {
    if (_followingList is EqualUnmodifiableListView) return _followingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followingList);
  }

  @override
  String toString() {
    return 'FollowState.displayFollow(followersList: $followersList, followingList: $followingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayFollow &&
            const DeepCollectionEquality()
                .equals(other._followersList, _followersList) &&
            const DeepCollectionEquality()
                .equals(other._followingList, _followingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_followersList),
      const DeepCollectionEquality().hash(_followingList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayFollowCopyWith<_$displayFollow> get copyWith =>
      __$$displayFollowCopyWithImpl<_$displayFollow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() followinitial,
    required TResult Function(
            List<dynamic> followersList, List<dynamic> followingList)
        displayFollow,
  }) {
    return displayFollow(followersList, followingList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? followinitial,
    TResult? Function(List<dynamic> followersList, List<dynamic> followingList)?
        displayFollow,
  }) {
    return displayFollow?.call(followersList, followingList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? followinitial,
    TResult Function(List<dynamic> followersList, List<dynamic> followingList)?
        displayFollow,
    required TResult orElse(),
  }) {
    if (displayFollow != null) {
      return displayFollow(followersList, followingList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(followinitial value) followinitial,
    required TResult Function(displayFollow value) displayFollow,
  }) {
    return displayFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(followinitial value)? followinitial,
    TResult? Function(displayFollow value)? displayFollow,
  }) {
    return displayFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(followinitial value)? followinitial,
    TResult Function(displayFollow value)? displayFollow,
    required TResult orElse(),
  }) {
    if (displayFollow != null) {
      return displayFollow(this);
    }
    return orElse();
  }
}

abstract class displayFollow implements FollowState {
  const factory displayFollow(
      {required final List<dynamic> followersList,
      required final List<dynamic> followingList}) = _$displayFollow;

  List<dynamic> get followersList;
  List<dynamic> get followingList;
  @JsonKey(ignore: true)
  _$$displayFollowCopyWith<_$displayFollow> get copyWith =>
      throw _privateConstructorUsedError;
}
