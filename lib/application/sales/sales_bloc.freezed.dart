// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readsales,
    required TResult Function(String status, String artworkId,
            String orderedUserId, String orderId)
        changeorderStatus,
    required TResult Function(ArtworkDetails artwork, String orderId)
        deletesalesReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readsales,
    TResult? Function(String status, String artworkId, String orderedUserId,
            String orderId)?
        changeorderStatus,
    TResult? Function(ArtworkDetails artwork, String orderId)?
        deletesalesReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readsales,
    TResult Function(String status, String artworkId, String orderedUserId,
            String orderId)?
        changeorderStatus,
    TResult Function(ArtworkDetails artwork, String orderId)? deletesalesReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(readsales value) readsales,
    required TResult Function(changeorderStatus value) changeorderStatus,
    required TResult Function(deletesalesReport value) deletesalesReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(readsales value)? readsales,
    TResult? Function(changeorderStatus value)? changeorderStatus,
    TResult? Function(deletesalesReport value)? deletesalesReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(readsales value)? readsales,
    TResult Function(changeorderStatus value)? changeorderStatus,
    TResult Function(deletesalesReport value)? deletesalesReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesEventCopyWith<$Res> {
  factory $SalesEventCopyWith(
          SalesEvent value, $Res Function(SalesEvent) then) =
      _$SalesEventCopyWithImpl<$Res, SalesEvent>;
}

/// @nodoc
class _$SalesEventCopyWithImpl<$Res, $Val extends SalesEvent>
    implements $SalesEventCopyWith<$Res> {
  _$SalesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$readsalesCopyWith<$Res> {
  factory _$$readsalesCopyWith(
          _$readsales value, $Res Function(_$readsales) then) =
      __$$readsalesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$readsalesCopyWithImpl<$Res>
    extends _$SalesEventCopyWithImpl<$Res, _$readsales>
    implements _$$readsalesCopyWith<$Res> {
  __$$readsalesCopyWithImpl(
      _$readsales _value, $Res Function(_$readsales) _then)
      : super(_value, _then);
}

/// @nodoc

class _$readsales implements readsales {
  const _$readsales();

  @override
  String toString() {
    return 'SalesEvent.readsales()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$readsales);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readsales,
    required TResult Function(String status, String artworkId,
            String orderedUserId, String orderId)
        changeorderStatus,
    required TResult Function(ArtworkDetails artwork, String orderId)
        deletesalesReport,
  }) {
    return readsales();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readsales,
    TResult? Function(String status, String artworkId, String orderedUserId,
            String orderId)?
        changeorderStatus,
    TResult? Function(ArtworkDetails artwork, String orderId)?
        deletesalesReport,
  }) {
    return readsales?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readsales,
    TResult Function(String status, String artworkId, String orderedUserId,
            String orderId)?
        changeorderStatus,
    TResult Function(ArtworkDetails artwork, String orderId)? deletesalesReport,
    required TResult orElse(),
  }) {
    if (readsales != null) {
      return readsales();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(readsales value) readsales,
    required TResult Function(changeorderStatus value) changeorderStatus,
    required TResult Function(deletesalesReport value) deletesalesReport,
  }) {
    return readsales(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(readsales value)? readsales,
    TResult? Function(changeorderStatus value)? changeorderStatus,
    TResult? Function(deletesalesReport value)? deletesalesReport,
  }) {
    return readsales?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(readsales value)? readsales,
    TResult Function(changeorderStatus value)? changeorderStatus,
    TResult Function(deletesalesReport value)? deletesalesReport,
    required TResult orElse(),
  }) {
    if (readsales != null) {
      return readsales(this);
    }
    return orElse();
  }
}

abstract class readsales implements SalesEvent {
  const factory readsales() = _$readsales;
}

/// @nodoc
abstract class _$$changeorderStatusCopyWith<$Res> {
  factory _$$changeorderStatusCopyWith(
          _$changeorderStatus value, $Res Function(_$changeorderStatus) then) =
      __$$changeorderStatusCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String status, String artworkId, String orderedUserId, String orderId});
}

/// @nodoc
class __$$changeorderStatusCopyWithImpl<$Res>
    extends _$SalesEventCopyWithImpl<$Res, _$changeorderStatus>
    implements _$$changeorderStatusCopyWith<$Res> {
  __$$changeorderStatusCopyWithImpl(
      _$changeorderStatus _value, $Res Function(_$changeorderStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? artworkId = null,
    Object? orderedUserId = null,
    Object? orderId = null,
  }) {
    return _then(_$changeorderStatus(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      artworkId: null == artworkId
          ? _value.artworkId
          : artworkId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedUserId: null == orderedUserId
          ? _value.orderedUserId
          : orderedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$changeorderStatus implements changeorderStatus {
  const _$changeorderStatus(
      {required this.status,
      required this.artworkId,
      required this.orderedUserId,
      required this.orderId});

  @override
  final String status;
  @override
  final String artworkId;
  @override
  final String orderedUserId;
  @override
  final String orderId;

  @override
  String toString() {
    return 'SalesEvent.changeorderStatus(status: $status, artworkId: $artworkId, orderedUserId: $orderedUserId, orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeorderStatus &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.artworkId, artworkId) ||
                other.artworkId == artworkId) &&
            (identical(other.orderedUserId, orderedUserId) ||
                other.orderedUserId == orderedUserId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, artworkId, orderedUserId, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeorderStatusCopyWith<_$changeorderStatus> get copyWith =>
      __$$changeorderStatusCopyWithImpl<_$changeorderStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readsales,
    required TResult Function(String status, String artworkId,
            String orderedUserId, String orderId)
        changeorderStatus,
    required TResult Function(ArtworkDetails artwork, String orderId)
        deletesalesReport,
  }) {
    return changeorderStatus(status, artworkId, orderedUserId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readsales,
    TResult? Function(String status, String artworkId, String orderedUserId,
            String orderId)?
        changeorderStatus,
    TResult? Function(ArtworkDetails artwork, String orderId)?
        deletesalesReport,
  }) {
    return changeorderStatus?.call(status, artworkId, orderedUserId, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readsales,
    TResult Function(String status, String artworkId, String orderedUserId,
            String orderId)?
        changeorderStatus,
    TResult Function(ArtworkDetails artwork, String orderId)? deletesalesReport,
    required TResult orElse(),
  }) {
    if (changeorderStatus != null) {
      return changeorderStatus(status, artworkId, orderedUserId, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(readsales value) readsales,
    required TResult Function(changeorderStatus value) changeorderStatus,
    required TResult Function(deletesalesReport value) deletesalesReport,
  }) {
    return changeorderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(readsales value)? readsales,
    TResult? Function(changeorderStatus value)? changeorderStatus,
    TResult? Function(deletesalesReport value)? deletesalesReport,
  }) {
    return changeorderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(readsales value)? readsales,
    TResult Function(changeorderStatus value)? changeorderStatus,
    TResult Function(deletesalesReport value)? deletesalesReport,
    required TResult orElse(),
  }) {
    if (changeorderStatus != null) {
      return changeorderStatus(this);
    }
    return orElse();
  }
}

abstract class changeorderStatus implements SalesEvent {
  const factory changeorderStatus(
      {required final String status,
      required final String artworkId,
      required final String orderedUserId,
      required final String orderId}) = _$changeorderStatus;

  String get status;
  String get artworkId;
  String get orderedUserId;
  String get orderId;
  @JsonKey(ignore: true)
  _$$changeorderStatusCopyWith<_$changeorderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deletesalesReportCopyWith<$Res> {
  factory _$$deletesalesReportCopyWith(
          _$deletesalesReport value, $Res Function(_$deletesalesReport) then) =
      __$$deletesalesReportCopyWithImpl<$Res>;
  @useResult
  $Res call({ArtworkDetails artwork, String orderId});
}

/// @nodoc
class __$$deletesalesReportCopyWithImpl<$Res>
    extends _$SalesEventCopyWithImpl<$Res, _$deletesalesReport>
    implements _$$deletesalesReportCopyWith<$Res> {
  __$$deletesalesReportCopyWithImpl(
      _$deletesalesReport _value, $Res Function(_$deletesalesReport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artwork = null,
    Object? orderId = null,
  }) {
    return _then(_$deletesalesReport(
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

class _$deletesalesReport implements deletesalesReport {
  const _$deletesalesReport({required this.artwork, required this.orderId});

  @override
  final ArtworkDetails artwork;
  @override
  final String orderId;

  @override
  String toString() {
    return 'SalesEvent.deletesalesReport(artwork: $artwork, orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deletesalesReport &&
            (identical(other.artwork, artwork) || other.artwork == artwork) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artwork, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deletesalesReportCopyWith<_$deletesalesReport> get copyWith =>
      __$$deletesalesReportCopyWithImpl<_$deletesalesReport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readsales,
    required TResult Function(String status, String artworkId,
            String orderedUserId, String orderId)
        changeorderStatus,
    required TResult Function(ArtworkDetails artwork, String orderId)
        deletesalesReport,
  }) {
    return deletesalesReport(artwork, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readsales,
    TResult? Function(String status, String artworkId, String orderedUserId,
            String orderId)?
        changeorderStatus,
    TResult? Function(ArtworkDetails artwork, String orderId)?
        deletesalesReport,
  }) {
    return deletesalesReport?.call(artwork, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readsales,
    TResult Function(String status, String artworkId, String orderedUserId,
            String orderId)?
        changeorderStatus,
    TResult Function(ArtworkDetails artwork, String orderId)? deletesalesReport,
    required TResult orElse(),
  }) {
    if (deletesalesReport != null) {
      return deletesalesReport(artwork, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(readsales value) readsales,
    required TResult Function(changeorderStatus value) changeorderStatus,
    required TResult Function(deletesalesReport value) deletesalesReport,
  }) {
    return deletesalesReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(readsales value)? readsales,
    TResult? Function(changeorderStatus value)? changeorderStatus,
    TResult? Function(deletesalesReport value)? deletesalesReport,
  }) {
    return deletesalesReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(readsales value)? readsales,
    TResult Function(changeorderStatus value)? changeorderStatus,
    TResult Function(deletesalesReport value)? deletesalesReport,
    required TResult orElse(),
  }) {
    if (deletesalesReport != null) {
      return deletesalesReport(this);
    }
    return orElse();
  }
}

abstract class deletesalesReport implements SalesEvent {
  const factory deletesalesReport(
      {required final ArtworkDetails artwork,
      required final String orderId}) = _$deletesalesReport;

  ArtworkDetails get artwork;
  String get orderId;
  @JsonKey(ignore: true)
  _$$deletesalesReportCopyWith<_$deletesalesReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() salesinitial,
    required TResult Function(
            List<Sales> salesList, bool isLoading, bool isError)
        displaySales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? salesinitial,
    TResult? Function(List<Sales> salesList, bool isLoading, bool isError)?
        displaySales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? salesinitial,
    TResult Function(List<Sales> salesList, bool isLoading, bool isError)?
        displaySales,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(salesinitial value) salesinitial,
    required TResult Function(displaySales value) displaySales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(salesinitial value)? salesinitial,
    TResult? Function(displaySales value)? displaySales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(salesinitial value)? salesinitial,
    TResult Function(displaySales value)? displaySales,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesStateCopyWith<$Res> {
  factory $SalesStateCopyWith(
          SalesState value, $Res Function(SalesState) then) =
      _$SalesStateCopyWithImpl<$Res, SalesState>;
}

/// @nodoc
class _$SalesStateCopyWithImpl<$Res, $Val extends SalesState>
    implements $SalesStateCopyWith<$Res> {
  _$SalesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$salesinitialCopyWith<$Res> {
  factory _$$salesinitialCopyWith(
          _$salesinitial value, $Res Function(_$salesinitial) then) =
      __$$salesinitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$salesinitialCopyWithImpl<$Res>
    extends _$SalesStateCopyWithImpl<$Res, _$salesinitial>
    implements _$$salesinitialCopyWith<$Res> {
  __$$salesinitialCopyWithImpl(
      _$salesinitial _value, $Res Function(_$salesinitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$salesinitial implements salesinitial {
  const _$salesinitial();

  @override
  String toString() {
    return 'SalesState.salesinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$salesinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() salesinitial,
    required TResult Function(
            List<Sales> salesList, bool isLoading, bool isError)
        displaySales,
  }) {
    return salesinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? salesinitial,
    TResult? Function(List<Sales> salesList, bool isLoading, bool isError)?
        displaySales,
  }) {
    return salesinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? salesinitial,
    TResult Function(List<Sales> salesList, bool isLoading, bool isError)?
        displaySales,
    required TResult orElse(),
  }) {
    if (salesinitial != null) {
      return salesinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(salesinitial value) salesinitial,
    required TResult Function(displaySales value) displaySales,
  }) {
    return salesinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(salesinitial value)? salesinitial,
    TResult? Function(displaySales value)? displaySales,
  }) {
    return salesinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(salesinitial value)? salesinitial,
    TResult Function(displaySales value)? displaySales,
    required TResult orElse(),
  }) {
    if (salesinitial != null) {
      return salesinitial(this);
    }
    return orElse();
  }
}

abstract class salesinitial implements SalesState {
  const factory salesinitial() = _$salesinitial;
}

/// @nodoc
abstract class _$$displaySalesCopyWith<$Res> {
  factory _$$displaySalesCopyWith(
          _$displaySales value, $Res Function(_$displaySales) then) =
      __$$displaySalesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Sales> salesList, bool isLoading, bool isError});
}

/// @nodoc
class __$$displaySalesCopyWithImpl<$Res>
    extends _$SalesStateCopyWithImpl<$Res, _$displaySales>
    implements _$$displaySalesCopyWith<$Res> {
  __$$displaySalesCopyWithImpl(
      _$displaySales _value, $Res Function(_$displaySales) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$displaySales(
      salesList: null == salesList
          ? _value._salesList
          : salesList // ignore: cast_nullable_to_non_nullable
              as List<Sales>,
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

class _$displaySales implements displaySales {
  const _$displaySales(
      {required final List<Sales> salesList,
      required this.isLoading,
      required this.isError})
      : _salesList = salesList;

  final List<Sales> _salesList;
  @override
  List<Sales> get salesList {
    if (_salesList is EqualUnmodifiableListView) return _salesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SalesState.displaySales(salesList: $salesList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$displaySales &&
            const DeepCollectionEquality()
                .equals(other._salesList, _salesList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_salesList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$displaySalesCopyWith<_$displaySales> get copyWith =>
      __$$displaySalesCopyWithImpl<_$displaySales>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() salesinitial,
    required TResult Function(
            List<Sales> salesList, bool isLoading, bool isError)
        displaySales,
  }) {
    return displaySales(salesList, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? salesinitial,
    TResult? Function(List<Sales> salesList, bool isLoading, bool isError)?
        displaySales,
  }) {
    return displaySales?.call(salesList, isLoading, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? salesinitial,
    TResult Function(List<Sales> salesList, bool isLoading, bool isError)?
        displaySales,
    required TResult orElse(),
  }) {
    if (displaySales != null) {
      return displaySales(salesList, isLoading, isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(salesinitial value) salesinitial,
    required TResult Function(displaySales value) displaySales,
  }) {
    return displaySales(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(salesinitial value)? salesinitial,
    TResult? Function(displaySales value)? displaySales,
  }) {
    return displaySales?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(salesinitial value)? salesinitial,
    TResult Function(displaySales value)? displaySales,
    required TResult orElse(),
  }) {
    if (displaySales != null) {
      return displaySales(this);
    }
    return orElse();
  }
}

abstract class displaySales implements SalesState {
  const factory displaySales(
      {required final List<Sales> salesList,
      required final bool isLoading,
      required final bool isError}) = _$displaySales;

  List<Sales> get salesList;
  bool get isLoading;
  bool get isError;
  @JsonKey(ignore: true)
  _$$displaySalesCopyWith<_$displaySales> get copyWith =>
      throw _privateConstructorUsedError;
}
