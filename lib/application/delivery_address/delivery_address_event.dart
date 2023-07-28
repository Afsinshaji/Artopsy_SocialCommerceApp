part of 'delivery_address_bloc.dart';

@freezed
class DeliveryAddressEvent with _$DeliveryAddressEvent {
  const factory DeliveryAddressEvent.showShoppingAddress() = showShoppingAddress;
 const factory DeliveryAddressEvent.addingShoppingAddress({required ShoppingAddress address}) = addingShoppingAddress;
  const factory DeliveryAddressEvent.removeShoppingAddress({required ShoppingAddress address}) = removeShoppingAddress;
   const factory DeliveryAddressEvent.editingShoppingAddress({required ShoppingAddress oldAddress, required ShoppingAddress newAddress}) = editingShoppingAddress;
}