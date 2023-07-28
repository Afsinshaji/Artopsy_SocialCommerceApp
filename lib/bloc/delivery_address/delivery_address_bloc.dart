// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/delivery_address/delivery_address.dart';
import '../../domain/models/shopping_address.dart';

part 'delivery_address_event.dart';
part 'delivery_address_state.dart';
part 'delivery_address_bloc.freezed.dart';

class DeliveryAddressBloc
    extends Bloc<DeliveryAddressEvent, DeliveryAddressState> {
  DeliveryAddressBloc() : super(const deliveryAddressinitial()) {
    on<showShoppingAddress>((event, emit) async {
      final List<ShoppingAddress> deliveryList = await readShoppingAddress();
      emit(displayDeliveryAddress(addressList: deliveryList));
    });
    on<addingShoppingAddress>((event, emit) async {
      await addShoppingAddress(event.address);
      add(const showShoppingAddress());
    });
    on<removeShoppingAddress>((event, emit) async {
      await deleteShoppingAddress(event.address);
      add(const showShoppingAddress());
    });
    on<editingShoppingAddress>((event, emit) async {
      await editShoppingAddresss(event.oldAddress, event.newAddress);
      add(const showShoppingAddress());
    });
  }
}
