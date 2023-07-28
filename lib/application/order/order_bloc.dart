// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:artopsy/infrastructure/order/order.dart';
import '../../domain/models/artwork_details.dart';
import '../../domain/models/order.dart';
import '../../domain/models/shopping_address.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const orderinitial()) {
    on<readorder>((event, emit) async {
      emit(const displayorder(
        orderList: [],
        isLoading: true,
        isError: false,
      ));
      try {
        final List<Order> orderList = await readOrder();
        emit(displayorder(
          orderList: orderList,
          isLoading: false,
          isError: false,
        ));
      } catch (e) {
        emit(const displayorder(
          orderList: [],
          isLoading: false,
          isError: true,
        ));
      }
    });
    on<createOrder>((event, emit) async {
      await placeOrder(event.artworkList, event.totalPrice, event.address);
      add(const readorder());
    });
    on<cancelorder>((event, emit) async {
      await cancelOrder(event.artwork, event.orderId);
      add(const readorder());
    });
  }
}
