// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DropdownButtonEvent {
  String get selectedValue => throw _privateConstructorUsedError;
  bool get isCatgory => throw _privateConstructorUsedError;
  bool get isPrice => throw _privateConstructorUsedError;
  bool get isAvailability => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedValue, bool isCatgory,
            bool isPrice, bool isAvailability)
        onselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedValue, bool isCatgory, bool isPrice,
            bool isAvailability)?
        onselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedValue, bool isCatgory, bool isPrice,
            bool isAvailability)?
        onselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onselected value) onselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onselected value)? onselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onselected value)? onselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropdownButtonEventCopyWith<DropdownButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownButtonEventCopyWith<$Res> {
  factory $DropdownButtonEventCopyWith(
          DropdownButtonEvent value, $Res Function(DropdownButtonEvent) then) =
      _$DropdownButtonEventCopyWithImpl<$Res, DropdownButtonEvent>;
  @useResult
  $Res call(
      {String selectedValue,
      bool isCatgory,
      bool isPrice,
      bool isAvailability});
}

/// @nodoc
class _$DropdownButtonEventCopyWithImpl<$Res, $Val extends DropdownButtonEvent>
    implements $DropdownButtonEventCopyWith<$Res> {
  _$DropdownButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
    Object? isCatgory = null,
    Object? isPrice = null,
    Object? isAvailability = null,
  }) {
    return _then(_value.copyWith(
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
      isCatgory: null == isCatgory
          ? _value.isCatgory
          : isCatgory // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrice: null == isPrice
          ? _value.isPrice
          : isPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailability: null == isAvailability
          ? _value.isAvailability
          : isAvailability // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$onselectedCopyWith<$Res>
    implements $DropdownButtonEventCopyWith<$Res> {
  factory _$$onselectedCopyWith(
          _$onselected value, $Res Function(_$onselected) then) =
      __$$onselectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String selectedValue,
      bool isCatgory,
      bool isPrice,
      bool isAvailability});
}

/// @nodoc
class __$$onselectedCopyWithImpl<$Res>
    extends _$DropdownButtonEventCopyWithImpl<$Res, _$onselected>
    implements _$$onselectedCopyWith<$Res> {
  __$$onselectedCopyWithImpl(
      _$onselected _value, $Res Function(_$onselected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
    Object? isCatgory = null,
    Object? isPrice = null,
    Object? isAvailability = null,
  }) {
    return _then(_$onselected(
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
      isCatgory: null == isCatgory
          ? _value.isCatgory
          : isCatgory // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrice: null == isPrice
          ? _value.isPrice
          : isPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailability: null == isAvailability
          ? _value.isAvailability
          : isAvailability // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$onselected implements onselected {
  const _$onselected(
      {required this.selectedValue,
      required this.isCatgory,
      required this.isPrice,
      required this.isAvailability});

  @override
  final String selectedValue;
  @override
  final bool isCatgory;
  @override
  final bool isPrice;
  @override
  final bool isAvailability;

  @override
  String toString() {
    return 'DropdownButtonEvent.onselected(selectedValue: $selectedValue, isCatgory: $isCatgory, isPrice: $isPrice, isAvailability: $isAvailability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onselected &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue) &&
            (identical(other.isCatgory, isCatgory) ||
                other.isCatgory == isCatgory) &&
            (identical(other.isPrice, isPrice) || other.isPrice == isPrice) &&
            (identical(other.isAvailability, isAvailability) ||
                other.isAvailability == isAvailability));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedValue, isCatgory, isPrice, isAvailability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onselectedCopyWith<_$onselected> get copyWith =>
      __$$onselectedCopyWithImpl<_$onselected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedValue, bool isCatgory,
            bool isPrice, bool isAvailability)
        onselected,
  }) {
    return onselected(selectedValue, isCatgory, isPrice, isAvailability);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedValue, bool isCatgory, bool isPrice,
            bool isAvailability)?
        onselected,
  }) {
    return onselected?.call(selectedValue, isCatgory, isPrice, isAvailability);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedValue, bool isCatgory, bool isPrice,
            bool isAvailability)?
        onselected,
    required TResult orElse(),
  }) {
    if (onselected != null) {
      return onselected(selectedValue, isCatgory, isPrice, isAvailability);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onselected value) onselected,
  }) {
    return onselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onselected value)? onselected,
  }) {
    return onselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onselected value)? onselected,
    required TResult orElse(),
  }) {
    if (onselected != null) {
      return onselected(this);
    }
    return orElse();
  }
}

abstract class onselected implements DropdownButtonEvent {
  const factory onselected(
      {required final String selectedValue,
      required final bool isCatgory,
      required final bool isPrice,
      required final bool isAvailability}) = _$onselected;

  @override
  String get selectedValue;
  @override
  bool get isCatgory;
  @override
  bool get isPrice;
  @override
  bool get isAvailability;
  @override
  @JsonKey(ignore: true)
  _$$onselectedCopyWith<_$onselected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DropdownButtonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dropdownButtoninitial,
    required TResult Function(String selectedValue) displayselectedCategory,
    required TResult Function(String selectedValue) displayselectedPrice,
    required TResult Function(String selectedValue) displayselectedAvailability,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dropdownButtoninitial,
    TResult? Function(String selectedValue)? displayselectedCategory,
    TResult? Function(String selectedValue)? displayselectedPrice,
    TResult? Function(String selectedValue)? displayselectedAvailability,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dropdownButtoninitial,
    TResult Function(String selectedValue)? displayselectedCategory,
    TResult Function(String selectedValue)? displayselectedPrice,
    TResult Function(String selectedValue)? displayselectedAvailability,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(dropdownButtoninitial value)
        dropdownButtoninitial,
    required TResult Function(displayselectedCategory value)
        displayselectedCategory,
    required TResult Function(displayselectedPrice value) displayselectedPrice,
    required TResult Function(displayselectedAvailability value)
        displayselectedAvailability,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult? Function(displayselectedCategory value)? displayselectedCategory,
    TResult? Function(displayselectedPrice value)? displayselectedPrice,
    TResult? Function(displayselectedAvailability value)?
        displayselectedAvailability,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult Function(displayselectedCategory value)? displayselectedCategory,
    TResult Function(displayselectedPrice value)? displayselectedPrice,
    TResult Function(displayselectedAvailability value)?
        displayselectedAvailability,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownButtonStateCopyWith<$Res> {
  factory $DropdownButtonStateCopyWith(
          DropdownButtonState value, $Res Function(DropdownButtonState) then) =
      _$DropdownButtonStateCopyWithImpl<$Res, DropdownButtonState>;
}

/// @nodoc
class _$DropdownButtonStateCopyWithImpl<$Res, $Val extends DropdownButtonState>
    implements $DropdownButtonStateCopyWith<$Res> {
  _$DropdownButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$dropdownButtoninitialCopyWith<$Res> {
  factory _$$dropdownButtoninitialCopyWith(_$dropdownButtoninitial value,
          $Res Function(_$dropdownButtoninitial) then) =
      __$$dropdownButtoninitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$dropdownButtoninitialCopyWithImpl<$Res>
    extends _$DropdownButtonStateCopyWithImpl<$Res, _$dropdownButtoninitial>
    implements _$$dropdownButtoninitialCopyWith<$Res> {
  __$$dropdownButtoninitialCopyWithImpl(_$dropdownButtoninitial _value,
      $Res Function(_$dropdownButtoninitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$dropdownButtoninitial implements dropdownButtoninitial {
  const _$dropdownButtoninitial();

  @override
  String toString() {
    return 'DropdownButtonState.dropdownButtoninitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$dropdownButtoninitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dropdownButtoninitial,
    required TResult Function(String selectedValue) displayselectedCategory,
    required TResult Function(String selectedValue) displayselectedPrice,
    required TResult Function(String selectedValue) displayselectedAvailability,
  }) {
    return dropdownButtoninitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dropdownButtoninitial,
    TResult? Function(String selectedValue)? displayselectedCategory,
    TResult? Function(String selectedValue)? displayselectedPrice,
    TResult? Function(String selectedValue)? displayselectedAvailability,
  }) {
    return dropdownButtoninitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dropdownButtoninitial,
    TResult Function(String selectedValue)? displayselectedCategory,
    TResult Function(String selectedValue)? displayselectedPrice,
    TResult Function(String selectedValue)? displayselectedAvailability,
    required TResult orElse(),
  }) {
    if (dropdownButtoninitial != null) {
      return dropdownButtoninitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(dropdownButtoninitial value)
        dropdownButtoninitial,
    required TResult Function(displayselectedCategory value)
        displayselectedCategory,
    required TResult Function(displayselectedPrice value) displayselectedPrice,
    required TResult Function(displayselectedAvailability value)
        displayselectedAvailability,
  }) {
    return dropdownButtoninitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult? Function(displayselectedCategory value)? displayselectedCategory,
    TResult? Function(displayselectedPrice value)? displayselectedPrice,
    TResult? Function(displayselectedAvailability value)?
        displayselectedAvailability,
  }) {
    return dropdownButtoninitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult Function(displayselectedCategory value)? displayselectedCategory,
    TResult Function(displayselectedPrice value)? displayselectedPrice,
    TResult Function(displayselectedAvailability value)?
        displayselectedAvailability,
    required TResult orElse(),
  }) {
    if (dropdownButtoninitial != null) {
      return dropdownButtoninitial(this);
    }
    return orElse();
  }
}

abstract class dropdownButtoninitial implements DropdownButtonState {
  const factory dropdownButtoninitial() = _$dropdownButtoninitial;
}

/// @nodoc
abstract class _$$displayselectedCategoryCopyWith<$Res> {
  factory _$$displayselectedCategoryCopyWith(_$displayselectedCategory value,
          $Res Function(_$displayselectedCategory) then) =
      __$$displayselectedCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedValue});
}

/// @nodoc
class __$$displayselectedCategoryCopyWithImpl<$Res>
    extends _$DropdownButtonStateCopyWithImpl<$Res, _$displayselectedCategory>
    implements _$$displayselectedCategoryCopyWith<$Res> {
  __$$displayselectedCategoryCopyWithImpl(_$displayselectedCategory _value,
      $Res Function(_$displayselectedCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
  }) {
    return _then(_$displayselectedCategory(
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$displayselectedCategory implements displayselectedCategory {
  const _$displayselectedCategory({required this.selectedValue});

  @override
  final String selectedValue;

  @override
  String toString() {
    return 'DropdownButtonState.displayselectedCategory(selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayselectedCategory &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayselectedCategoryCopyWith<_$displayselectedCategory> get copyWith =>
      __$$displayselectedCategoryCopyWithImpl<_$displayselectedCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dropdownButtoninitial,
    required TResult Function(String selectedValue) displayselectedCategory,
    required TResult Function(String selectedValue) displayselectedPrice,
    required TResult Function(String selectedValue) displayselectedAvailability,
  }) {
    return displayselectedCategory(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dropdownButtoninitial,
    TResult? Function(String selectedValue)? displayselectedCategory,
    TResult? Function(String selectedValue)? displayselectedPrice,
    TResult? Function(String selectedValue)? displayselectedAvailability,
  }) {
    return displayselectedCategory?.call(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dropdownButtoninitial,
    TResult Function(String selectedValue)? displayselectedCategory,
    TResult Function(String selectedValue)? displayselectedPrice,
    TResult Function(String selectedValue)? displayselectedAvailability,
    required TResult orElse(),
  }) {
    if (displayselectedCategory != null) {
      return displayselectedCategory(selectedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(dropdownButtoninitial value)
        dropdownButtoninitial,
    required TResult Function(displayselectedCategory value)
        displayselectedCategory,
    required TResult Function(displayselectedPrice value) displayselectedPrice,
    required TResult Function(displayselectedAvailability value)
        displayselectedAvailability,
  }) {
    return displayselectedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult? Function(displayselectedCategory value)? displayselectedCategory,
    TResult? Function(displayselectedPrice value)? displayselectedPrice,
    TResult? Function(displayselectedAvailability value)?
        displayselectedAvailability,
  }) {
    return displayselectedCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult Function(displayselectedCategory value)? displayselectedCategory,
    TResult Function(displayselectedPrice value)? displayselectedPrice,
    TResult Function(displayselectedAvailability value)?
        displayselectedAvailability,
    required TResult orElse(),
  }) {
    if (displayselectedCategory != null) {
      return displayselectedCategory(this);
    }
    return orElse();
  }
}

abstract class displayselectedCategory implements DropdownButtonState {
  const factory displayselectedCategory({required final String selectedValue}) =
      _$displayselectedCategory;

  String get selectedValue;
  @JsonKey(ignore: true)
  _$$displayselectedCategoryCopyWith<_$displayselectedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$displayselectedPriceCopyWith<$Res> {
  factory _$$displayselectedPriceCopyWith(_$displayselectedPrice value,
          $Res Function(_$displayselectedPrice) then) =
      __$$displayselectedPriceCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedValue});
}

/// @nodoc
class __$$displayselectedPriceCopyWithImpl<$Res>
    extends _$DropdownButtonStateCopyWithImpl<$Res, _$displayselectedPrice>
    implements _$$displayselectedPriceCopyWith<$Res> {
  __$$displayselectedPriceCopyWithImpl(_$displayselectedPrice _value,
      $Res Function(_$displayselectedPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
  }) {
    return _then(_$displayselectedPrice(
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$displayselectedPrice implements displayselectedPrice {
  const _$displayselectedPrice({required this.selectedValue});

  @override
  final String selectedValue;

  @override
  String toString() {
    return 'DropdownButtonState.displayselectedPrice(selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayselectedPrice &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayselectedPriceCopyWith<_$displayselectedPrice> get copyWith =>
      __$$displayselectedPriceCopyWithImpl<_$displayselectedPrice>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dropdownButtoninitial,
    required TResult Function(String selectedValue) displayselectedCategory,
    required TResult Function(String selectedValue) displayselectedPrice,
    required TResult Function(String selectedValue) displayselectedAvailability,
  }) {
    return displayselectedPrice(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dropdownButtoninitial,
    TResult? Function(String selectedValue)? displayselectedCategory,
    TResult? Function(String selectedValue)? displayselectedPrice,
    TResult? Function(String selectedValue)? displayselectedAvailability,
  }) {
    return displayselectedPrice?.call(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dropdownButtoninitial,
    TResult Function(String selectedValue)? displayselectedCategory,
    TResult Function(String selectedValue)? displayselectedPrice,
    TResult Function(String selectedValue)? displayselectedAvailability,
    required TResult orElse(),
  }) {
    if (displayselectedPrice != null) {
      return displayselectedPrice(selectedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(dropdownButtoninitial value)
        dropdownButtoninitial,
    required TResult Function(displayselectedCategory value)
        displayselectedCategory,
    required TResult Function(displayselectedPrice value) displayselectedPrice,
    required TResult Function(displayselectedAvailability value)
        displayselectedAvailability,
  }) {
    return displayselectedPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult? Function(displayselectedCategory value)? displayselectedCategory,
    TResult? Function(displayselectedPrice value)? displayselectedPrice,
    TResult? Function(displayselectedAvailability value)?
        displayselectedAvailability,
  }) {
    return displayselectedPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult Function(displayselectedCategory value)? displayselectedCategory,
    TResult Function(displayselectedPrice value)? displayselectedPrice,
    TResult Function(displayselectedAvailability value)?
        displayselectedAvailability,
    required TResult orElse(),
  }) {
    if (displayselectedPrice != null) {
      return displayselectedPrice(this);
    }
    return orElse();
  }
}

abstract class displayselectedPrice implements DropdownButtonState {
  const factory displayselectedPrice({required final String selectedValue}) =
      _$displayselectedPrice;

  String get selectedValue;
  @JsonKey(ignore: true)
  _$$displayselectedPriceCopyWith<_$displayselectedPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$displayselectedAvailabilityCopyWith<$Res> {
  factory _$$displayselectedAvailabilityCopyWith(
          _$displayselectedAvailability value,
          $Res Function(_$displayselectedAvailability) then) =
      __$$displayselectedAvailabilityCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedValue});
}

/// @nodoc
class __$$displayselectedAvailabilityCopyWithImpl<$Res>
    extends _$DropdownButtonStateCopyWithImpl<$Res,
        _$displayselectedAvailability>
    implements _$$displayselectedAvailabilityCopyWith<$Res> {
  __$$displayselectedAvailabilityCopyWithImpl(
      _$displayselectedAvailability _value,
      $Res Function(_$displayselectedAvailability) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
  }) {
    return _then(_$displayselectedAvailability(
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$displayselectedAvailability implements displayselectedAvailability {
  const _$displayselectedAvailability({required this.selectedValue});

  @override
  final String selectedValue;

  @override
  String toString() {
    return 'DropdownButtonState.displayselectedAvailability(selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayselectedAvailability &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayselectedAvailabilityCopyWith<_$displayselectedAvailability>
      get copyWith => __$$displayselectedAvailabilityCopyWithImpl<
          _$displayselectedAvailability>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dropdownButtoninitial,
    required TResult Function(String selectedValue) displayselectedCategory,
    required TResult Function(String selectedValue) displayselectedPrice,
    required TResult Function(String selectedValue) displayselectedAvailability,
  }) {
    return displayselectedAvailability(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dropdownButtoninitial,
    TResult? Function(String selectedValue)? displayselectedCategory,
    TResult? Function(String selectedValue)? displayselectedPrice,
    TResult? Function(String selectedValue)? displayselectedAvailability,
  }) {
    return displayselectedAvailability?.call(selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dropdownButtoninitial,
    TResult Function(String selectedValue)? displayselectedCategory,
    TResult Function(String selectedValue)? displayselectedPrice,
    TResult Function(String selectedValue)? displayselectedAvailability,
    required TResult orElse(),
  }) {
    if (displayselectedAvailability != null) {
      return displayselectedAvailability(selectedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(dropdownButtoninitial value)
        dropdownButtoninitial,
    required TResult Function(displayselectedCategory value)
        displayselectedCategory,
    required TResult Function(displayselectedPrice value) displayselectedPrice,
    required TResult Function(displayselectedAvailability value)
        displayselectedAvailability,
  }) {
    return displayselectedAvailability(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult? Function(displayselectedCategory value)? displayselectedCategory,
    TResult? Function(displayselectedPrice value)? displayselectedPrice,
    TResult? Function(displayselectedAvailability value)?
        displayselectedAvailability,
  }) {
    return displayselectedAvailability?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(dropdownButtoninitial value)? dropdownButtoninitial,
    TResult Function(displayselectedCategory value)? displayselectedCategory,
    TResult Function(displayselectedPrice value)? displayselectedPrice,
    TResult Function(displayselectedAvailability value)?
        displayselectedAvailability,
    required TResult orElse(),
  }) {
    if (displayselectedAvailability != null) {
      return displayselectedAvailability(this);
    }
    return orElse();
  }
}

abstract class displayselectedAvailability implements DropdownButtonState {
  const factory displayselectedAvailability(
      {required final String selectedValue}) = _$displayselectedAvailability;

  String get selectedValue;
  @JsonKey(ignore: true)
  _$$displayselectedAvailabilityCopyWith<_$displayselectedAvailability>
      get copyWith => throw _privateConstructorUsedError;
}
