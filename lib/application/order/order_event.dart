part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.createOrder({required List<ArtworkDetails> artworkList, required num totalPrice,required ShoppingAddress address}) = createOrder;
   const factory OrderEvent.cancelorder({required ArtworkDetails artwork, required String orderId}) = cancelorder;
    const factory OrderEvent.readorder() = readorder;
}