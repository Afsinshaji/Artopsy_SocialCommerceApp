part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.orderinitial() = orderinitial;
   const factory OrderState.displayorder({required List<Order>orderList,required bool isLoading, required bool isError}) = displayorder;

}
