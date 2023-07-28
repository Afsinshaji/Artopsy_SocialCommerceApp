// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)
        createOrder,
    required TResult Function(ArtworkDetails artwork, String orderId)
        cancelorder,
    required TResult Function() readorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)?
        createOrder,
    TResult? Function(ArtworkDetails artwork, String orderId)? cancelorder,
    TResult? Function()? readorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)?
        createOrder,
    TResult Function(ArtworkDetails artwork, String orderId)? cancelorder,
    TResult Function()? readorder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(createOrder value) createOrder,
    required TResult Function(cancelorder value) cancelorder,
    required TResult Function(readorder value) readorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(createOrder value)? createOrder,
    TResult? Function(cancelorder value)? cancelorder,
    TResult? Function(readorder value)? readorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(createOrder value)? createOrder,
    TResult Function(cancelorder value)? cancelorder,
    TResult Function(readorder value)? readorder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$createOrderCopyWith<$Res> {
  factory _$$createOrderCopyWith(
          _$createOrder value, $Res Function(_$createOrder) then) =
      __$$createOrderCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ArtworkDetails> artworkList,
      num totalPrice,
      ShoppingAddress address});
}

/// @nodoc
class __$$createOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$createOrder>
    implements _$$createOrderCopyWith<$Res> {
  __$$createOrderCopyWithImpl(
      _$createOrder _value, $Res Function(_$createOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artworkList = null,
    Object? totalPrice = null,
    Object? address = null,
  }) {
    return _then(_$createOrder(
      artworkList: null == artworkList
          ? _value._artworkList
          : artworkList // ignore: cast_nullable_to_non_nullable
              as List<ArtworkDetails>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as ShoppingAddress,
    ));
  }
}

/// @nodoc

class _$createOrder implements createOrder {
  const _$createOrder(
      {required final List<ArtworkDetails> artworkList,
      required this.totalPrice,
      required this.address})
      : _artworkList = artworkList;

  final List<ArtworkDetails> _artworkList;
  @override
  List<ArtworkDetails> get artworkList {
    if (_artworkList is EqualUnmodifiableListView) return _artworkList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artworkList);
  }

  @override
  final num totalPrice;
  @override
  final ShoppingAddress address;

  @override
  String toString() {
    return 'OrderEvent.createOrder(artworkList: $artworkList, totalPrice: $totalPrice, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$createOrder &&
            const DeepCollectionEquality()
                .equals(other._artworkList, _artworkList) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_artworkList), totalPrice, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$createOrderCopyWith<_$createOrder> get copyWith =>
      __$$createOrderCopyWithImpl<_$createOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)
        createOrder,
    required TResult Function(ArtworkDetails artwork, String orderId)
        cancelorder,
    required TResult Function() readorder,
  }) {
    return createOrder(artworkList, totalPrice, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)?
        createOrder,
    TResult? Function(ArtworkDetails artwork, String orderId)? cancelorder,
    TResult? Function()? readorder,
  }) {
    return createOrder?.call(artworkList, totalPrice, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)?
        createOrder,
    TResult Function(ArtworkDetails artwork, String orderId)? cancelorder,
    TResult Function()? readorder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(artworkList, totalPrice, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(createOrder value) createOrder,
    required TResult Function(cancelorder value) cancelorder,
    required TResult Function(readorder value) readorder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(createOrder value)? createOrder,
    TResult? Function(cancelorder value)? cancelorder,
    TResult? Function(readorder value)? readorder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(createOrder value)? createOrder,
    TResult Function(cancelorder value)? cancelorder,
    TResult Function(readorder value)? readorder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class createOrder implements OrderEvent {
  const factory createOrder(
      {required final List<ArtworkDetails> artworkList,
      required final num totalPrice,
      required final ShoppingAddress address}) = _$createOrder;

  List<ArtworkDetails> get artworkList;
  num get totalPrice;
  ShoppingAddress get address;
  @JsonKey(ignore: true)
  _$$createOrderCopyWith<_$createOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$cancelorderCopyWith<$Res> {
  factory _$$cancelorderCopyWith(
          _$cancelorder value, $Res Function(_$cancelorder) then) =
      __$$cancelorderCopyWithImpl<$Res>;
  @useResult
  $Res call({ArtworkDetails artwork, String orderId});
}

/// @nodoc
class __$$cancelorderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$cancelorder>
    implements _$$cancelorderCopyWith<$Res> {
  __$$cancelorderCopyWithImpl(
      _$cancelorder _value, $Res Function(_$cancelorder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artwork = null,
    Object? orderId = null,
  }) {
    return _then(_$cancelorder(
      artwork: null == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as ArtworkDetails,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$cancelorder implements cancelorder {
  const _$cancelorder({required this.artwork, required this.orderId});

  @override
  final ArtworkDetails artwork;
  @override
  final String orderId;

  @override
  String toString() {
    return 'OrderEvent.cancelorder(artwork: $artwork, orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$cancelorder &&
            (identical(other.artwork, artwork) || other.artwork == artwork) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artwork, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$cancelorderCopyWith<_$cancelorder> get copyWith =>
      __$$cancelorderCopyWithImpl<_$cancelorder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)
        createOrder,
    required TResult Function(ArtworkDetails artwork, String orderId)
        cancelorder,
    required TResult Function() readorder,
  }) {
    return cancelorder(artwork, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)?
        createOrder,
    TResult? Function(ArtworkDetails artwork, String orderId)? cancelorder,
    TResult? Function()? readorder,
  }) {
    return cancelorder?.call(artwork, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)?
        createOrder,
    TResult Function(ArtworkDetails artwork, String orderId)? cancelorder,
    TResult Function()? readorder,
    required TResult orElse(),
  }) {
    if (cancelorder != null) {
      return cancelorder(artwork, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(createOrder value) createOrder,
    required TResult Function(cancelorder value) cancelorder,
    required TResult Function(readorder value) readorder,
  }) {
    return cancelorder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(createOrder value)? createOrder,
    TResult? Function(cancelorder value)? cancelorder,
    TResult? Function(readorder value)? readorder,
  }) {
    return cancelorder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(createOrder value)? createOrder,
    TResult Function(cancelorder value)? cancelorder,
    TResult Function(readorder value)? readorder,
    required TResult orElse(),
  }) {
    if (cancelorder != null) {
      return cancelorder(this);
    }
    return orElse();
  }
}

abstract class cancelorder implements OrderEvent {
  const factory cancelorder(
      {required final ArtworkDetails artwork,
      required final String orderId}) = _$cancelorder;

  ArtworkDetails get artwork;
  String get orderId;
  @JsonKey(ignore: true)
  _$$cancelorderCopyWith<_$cancelorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$readorderCopyWith<$Res> {
  factory _$$readorderCopyWith(
          _$readorder value, $Res Function(_$readorder) then) =
      __$$readorderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$readorderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$readorder>
    implements _$$readorderCopyWith<$Res> {
  __$$readorderCopyWithImpl(
      _$readorder _value, $Res Function(_$readorder) _then)
      : super(_value, _then);
}

/// @nodoc

class _$readorder implements readorder {
  const _$readorder();

  @override
  String toString() {
    return 'OrderEvent.readorder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$readorder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)
        createOrder,
    required TResult Function(ArtworkDetails artwork, String orderId)
        cancelorder,
    required TResult Function() readorder,
  }) {
    return readorder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)?
        createOrder,
    TResult? Function(ArtworkDetails artwork, String orderId)? cancelorder,
    TResult? Function()? readorder,
  }) {
    return readorder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArtworkDetails> artworkList, num totalPrice,
            ShoppingAddress address)?
        createOrder,
    TResult Function(ArtworkDetails artwork, String orderId)? cancelorder,
    TResult Function()? readorder,
    required TResult orElse(),
  }) {
    if (readorder != null) {
      return readorder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(createOrder value) createOrder,
    required TResult Function(cancelorder value) cancelorder,
    required TResult Function(readorder value) readorder,
  }) {
    return readorder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(createOrder value)? createOrder,
    TResult? Function(cancelorder value)? cancelorder,
    TResult? Function(readorder value)? readorder,
  }) {
    return readorder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(createOrder value)? createOrder,
    TResult Function(cancelorder value)? cancelorder,
    TResult Function(readorder value)? readorder,
    required TResult orElse(),
  }) {
    if (readorder != null) {
      return readorder(this);
    }
    return orElse();
  }
}

abstract class readorder implements OrderEvent {
  const factory readorder() = _$readorder;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderinitial,
    required TResult Function(
            List<Order> orderList, bool isLoading, bool isError)
        displayorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orderinitial,
    TResult? Function(List<Order> orderList, bool isLoading, bool isError)?
        displayorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderinitial,
    TResult Function(List<Order> orderList, bool isLoading, bool isError)?
        displayorder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(orderinitial value) orderinitial,
    required TResult Function(displayorder value) displayorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(orderinitial value)? orderinitial,
    TResult? Function(displayorder value)? displayorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(orderinitial value)? orderinitial,
    TResult Function(displayorder value)? displayorder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$orderinitialCopyWith<$Res> {
  factory _$$orderinitialCopyWith(
          _$orderinitial value, $Res Function(_$orderinitial) then) =
      __$$orderinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$orderinitialCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$orderinitial>
    implements _$$orderinitialCopyWith<$Res> {
  __$$orderinitialCopyWithImpl(
      _$orderinitial _value, $Res Function(_$orderinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$orderinitial implements orderinitial {
  const _$orderinitial();

  @override
  String toString() {
    return 'OrderState.orderinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$orderinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderinitial,
    required TResult Function(
            List<Order> orderList, bool isLoading, bool isError)
        displayorder,
  }) {
    return orderinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orderinitial,
    TResult? Function(List<Order> orderList, bool isLoading, bool isError)?
        displayorder,
  }) {
    return orderinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderinitial,
    TResult Function(List<Order> orderList, bool isLoading, bool isError)?
        displayorder,
    required TResult orElse(),
  }) {
    if (orderinitial != null) {
      return orderinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(orderinitial value) orderinitial,
    required TResult Function(displayorder value) displayorder,
  }) {
    return orderinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(orderinitial value)? orderinitial,
    TResult? Function(displayorder value)? displayorder,
  }) {
    return orderinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(orderinitial value)? orderinitial,
    TResult Function(displayorder value)? displayorder,
    required TResult orElse(),
  }) {
    if (orderinitial != null) {
      return orderinitial(this);
    }
    return orElse();
  }
}

abstract class orderinitial implements OrderState {
  const factory orderinitial() = _$orderinitial;
}

/// @nodoc
abstract class _$$displayorderCopyWith<$Res> {
  factory _$$displayorderCopyWith(
          _$displayorder value, $Res Function(_$displayorder) then) =
      __$$displayorderCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Order> orderList, bool isLoading, bool isError});
}

/// @nodoc
class __$$displayorderCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$displayorder>
    implements _$$displayorderCopyWith<$Res> {
  __$$displayorderCopyWithImpl(
      _$displayorder _value, $Res Function(_$displayorder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$displayorder(
      orderList: null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$displayorder implements displayorder {
  const _$displayorder(
      {required final List<Order> orderList,
      required this.isLoading,
      required this.isError})
      : _orderList = orderList;

  final List<Order> _orderList;
  @override
  List<Order> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'OrderState.displayorder(orderList: $orderList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displayorder &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orderList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displayorderCopyWith<_$displayorder> get copyWith =>
      __$$displayorderCopyWithImpl<_$displayorder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderinitial,
    required TResult Function(
            List<Order> orderList, bool isLoading, bool isError)
        displayorder,
  }) {
    return displayorder(orderList, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orderinitial,
    TResult? Function(List<Order> orderList, bool isLoading, bool isError)?
        displayorder,
  }) {
    return displayorder?.call(orderList, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderinitial,
    TResult Function(List<Order> orderList, bool isLoading, bool isError)?
        displayorder,
    required TResult orElse(),
  }) {
    if (displayorder != null) {
      return displayorder(orderList, isLoading, isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(orderinitial value) orderinitial,
    required TResult Function(displayorder value) displayorder,
  }) {
    return displayorder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(orderinitial value)? orderinitial,
    TResult? Function(displayorder value)? displayorder,
  }) {
    return displayorder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(orderinitial value)? orderinitial,
    TResult Function(displayorder value)? displayorder,
    required TResult orElse(),
  }) {
    if (displayorder != null) {
      return displayorder(this);
    }
    return orElse();
  }
}

abstract class displayorder implements OrderState {
  const factory displayorder(
      {required final List<Order> orderList,
      required final bool isLoading,
      required final bool isError}) = _$displayorder;

  List<Order> get orderList;
  bool get isLoading;
  bool get isError;
  @JsonKey(ignore: true)
  _$$displayorderCopyWith<_$displayorder> get copyWith =>
      throw _privateConstructorUsedError;
}
