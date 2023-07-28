part of 'delivery_address_bloc.dart';

@freezed
class DeliveryAddressState with _$DeliveryAddressState {
  const factory DeliveryAddressState.deliveryAddressinitial() = deliveryAddressinitial;
  const factory DeliveryAddressState.displayDeliveryAddress({required List<ShoppingAddress>addressList}) = displayDeliveryAddress;
}
