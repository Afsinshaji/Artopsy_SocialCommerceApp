// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_bottom_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryBottomSheetEvent {
  ShoppingAddress? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingAddress? value) onSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingAddress? value)? onSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingAddress? value)? onSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onSelected value) onSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSelected value)? onSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSelected value)? onSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryBottomSheetEventCopyWith<DeliveryBottomSheetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryBottomSheetEventCopyWith<$Res> {
  factory $DeliveryBottomSheetEventCopyWith(DeliveryBottomSheetEvent value,
          $Res Function(DeliveryBottomSheetEvent) then) =
      _$DeliveryBottomSheetEventCopyWithImpl<$Res, DeliveryBottomSheetEvent>;
  @useResult
  $Res call({ShoppingAddress? value});
}

/// @nodoc
class _$DeliveryBottomSheetEventCopyWithImpl<$Res,
        $Val extends DeliveryBottomSheetEvent>
    implements $DeliveryBottomSheetEventCopyWith<$Res> {
  _$DeliveryBottomSheetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ShoppingAddress?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$onSelectedCopyWith<$Res>
    implements $DeliveryBottomSheetEventCopyWith<$Res> {
  factory _$$onSelectedCopyWith(
          _$onSelected value, $Res Function(_$onSelected) then) =
      __$$onSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShoppingAddress? value});
}

/// @nodoc
class __$$onSelectedCopyWithImpl<$Res>
    extends _$DeliveryBottomSheetEventCopyWithImpl<$Res, _$onSelected>
    implements _$$onSelectedCopyWith<$Res> {
  __$$onSelectedCopyWithImpl(
      _$onSelected _value, $Res Function(_$onSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$onSelected(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ShoppingAddress?,
    ));
  }
}

/// @nodoc

class _$onSelected implements onSelected {
  const _$onSelected({required this.value});

  @override
  final ShoppingAddress? value;

  @override
  String toString() {
    return 'DeliveryBottomSheetEvent.onSelected(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onSelected &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onSelectedCopyWith<_$onSelected> get copyWith =>
      __$$onSelectedCopyWithImpl<_$onSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShoppingAddress? value) onSelected,
  }) {
    return onSelected(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShoppingAddress? value)? onSelected,
  }) {
    return onSelected?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShoppingAddress? value)? onSelected,
    required TResult orElse(),
  }) {
    if (onSelected != null) {
      return onSelected(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onSelected value) onSelected,
  }) {
    return onSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSelected value)? onSelected,
  }) {
    return onSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSelected value)? onSelected,
    required TResult orElse(),
  }) {
    if (onSelected != null) {
      return onSelected(this);
    }
    return orElse();
  }
}

abstract class onSelected implements DeliveryBottomSheetEvent {
  const factory onSelected({required final ShoppingAddress? value}) =
      _$onSelected;

  @override
  ShoppingAddress? get value;
  @override
  @JsonKey(ignore: true)
  _$$onSelectedCopyWith<_$onSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryBottomSheetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deliveryBottomSheetinitial,
    required TResult Function(ShoppingAddress? address) displaySelectedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deliveryBottomSheetinitial,
    TResult? Function(ShoppingAddress? address)? displaySelectedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deliveryBottomSheetinitial,
    TResult Function(ShoppingAddress? address)? displaySelectedValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(deliveryBottomSheetinitial value)
        deliveryBottomSheetinitial,
    required TResult Function(displaySelectedValue value) displaySelectedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(deliveryBottomSheetinitial value)?
        deliveryBottomSheetinitial,
    TResult? Function(displaySelectedValue value)? displaySelectedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(deliveryBottomSheetinitial value)?
        deliveryBottomSheetinitial,
    TResult Function(displaySelectedValue value)? displaySelectedValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryBottomSheetStateCopyWith<$Res> {
  factory $DeliveryBottomSheetStateCopyWith(DeliveryBottomSheetState value,
          $Res Function(DeliveryBottomSheetState) then) =
      _$DeliveryBottomSheetStateCopyWithImpl<$Res, DeliveryBottomSheetState>;
}

/// @nodoc
class _$DeliveryBottomSheetStateCopyWithImpl<$Res,
        $Val extends DeliveryBottomSheetState>
    implements $DeliveryBottomSheetStateCopyWith<$Res> {
  _$DeliveryBottomSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$deliveryBottomSheetinitialCopyWith<$Res> {
  factory _$$deliveryBottomSheetinitialCopyWith(
          _$deliveryBottomSheetinitial value,
          $Res Function(_$deliveryBottomSheetinitial) then) =
      __$$deliveryBottomSheetinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$deliveryBottomSheetinitialCopyWithImpl<$Res>
    extends _$DeliveryBottomSheetStateCopyWithImpl<$Res,
        _$deliveryBottomSheetinitial>
    implements _$$deliveryBottomSheetinitialCopyWith<$Res> {
  __$$deliveryBottomSheetinitialCopyWithImpl(
      _$deliveryBottomSheetinitial _value,
      $Res Function(_$deliveryBottomSheetinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$deliveryBottomSheetinitial implements deliveryBottomSheetinitial {
  const _$deliveryBottomSheetinitial();

  @override
  String toString() {
    return 'DeliveryBottomSheetState.deliveryBottomSheetinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deliveryBottomSheetinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deliveryBottomSheetinitial,
    required TResult Function(ShoppingAddress? address) displaySelectedValue,
  }) {
    return deliveryBottomSheetinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deliveryBottomSheetinitial,
    TResult? Function(ShoppingAddress? address)? displaySelectedValue,
  }) {
    return deliveryBottomSheetinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deliveryBottomSheetinitial,
    TResult Function(ShoppingAddress? address)? displaySelectedValue,
    required TResult orElse(),
  }) {
    if (deliveryBottomSheetinitial != null) {
      return deliveryBottomSheetinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(deliveryBottomSheetinitial value)
        deliveryBottomSheetinitial,
    required TResult Function(displaySelectedValue value) displaySelectedValue,
  }) {
    return deliveryBottomSheetinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(deliveryBottomSheetinitial value)?
        deliveryBottomSheetinitial,
    TResult? Function(displaySelectedValue value)? displaySelectedValue,
  }) {
    return deliveryBottomSheetinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(deliveryBottomSheetinitial value)?
        deliveryBottomSheetinitial,
    TResult Function(displaySelectedValue value)? displaySelectedValue,
    required TResult orElse(),
  }) {
    if (deliveryBottomSheetinitial != null) {
      return deliveryBottomSheetinitial(this);
    }
    return orElse();
  }
}

abstract class deliveryBottomSheetinitial implements DeliveryBottomSheetState {
  const factory deliveryBottomSheetinitial() = _$deliveryBottomSheetinitial;
}

/// @nodoc
abstract class _$$displaySelectedValueCopyWith<$Res> {
  factory _$$displaySelectedValueCopyWith(_$displaySelectedValue value,
          $Res Function(_$displaySelectedValue) then) =
      __$$displaySelectedValueCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingAddress? address});
}

/// @nodoc
class __$$displaySelectedValueCopyWithImpl<$Res>
    extends _$DeliveryBottomSheetStateCopyWithImpl<$Res, _$displaySelectedValue>
    implements _$$displaySelectedValueCopyWith<$Res> {
  __$$displaySelectedValueCopyWithImpl(_$displaySelectedValue _value,
      $Res Function(_$displaySelectedValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$displaySelectedValue(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as ShoppingAddress?,
    ));
  }
}

/// @nodoc

class _$displaySelectedValue implements displaySelectedValue {
  const _$displaySelectedValue({required this.address});

  @override
  final ShoppingAddress? address;

  @override
  String toString() {
    return 'DeliveryBottomSheetState.displaySelectedValue(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displaySelectedValue &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displaySelectedValueCopyWith<_$displaySelectedValue> get copyWith =>
      __$$displaySelectedValueCopyWithImpl<_$displaySelectedValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deliveryBottomSheetinitial,
    required TResult Function(ShoppingAddress? address) displaySelectedValue,
  }) {
    return displaySelectedValue(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deliveryBottomSheetinitial,
    TResult? Function(ShoppingAddress? address)? displaySelectedValue,
  }) {
    return displaySelectedValue?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deliveryBottomSheetinitial,
    TResult Function(ShoppingAddress? address)? displaySelectedValue,
    required TResult orElse(),
  }) {
    if (displaySelectedValue != null) {
      return displaySelectedValue(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(deliveryBottomSheetinitial value)
        deliveryBottomSheetinitial,
    required TResult Function(displaySelectedValue value) displaySelectedValue,
  }) {
    return displaySelectedValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(deliveryBottomSheetinitial value)?
        deliveryBottomSheetinitial,
    TResult? Function(displaySelectedValue value)? displaySelectedValue,
  }) {
    return displaySelectedValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(deliveryBottomSheetinitial value)?
        deliveryBottomSheetinitial,
    TResult Function(displaySelectedValue value)? displaySelectedValue,
    required TResult orElse(),
  }) {
    if (displaySelectedValue != null) {
      return displaySelectedValue(this);
    }
    return orElse();
  }
}

abstract class displaySelectedValue implements DeliveryBottomSheetState {
  const factory displaySelectedValue(
      {required final ShoppingAddress? address}) = _$displaySelectedValue;

  ShoppingAddress? get address;
  @JsonKey(ignore: true)
  _$$displaySelectedValueCopyWith<_$displaySelectedValue> get copyWith =>
      throw _privateConstructorUsedError;
}
