part of 'my_cart_bloc.dart';

@freezed
class MyCartEvent with _$MyCartEvent {
  const factory MyCartEvent.showcart() = showcart;
   const factory MyCartEvent.clearcart() = clearcart;
  const factory MyCartEvent.addtocart({required ArtworkDetails artwork}) = addtocart;
  const factory MyCartEvent.removefromCart({required String artworkId}) = removefromCart;
  const factory MyCartEvent.isaddedtoCart({required String artworkId}) = isaddedtoCart;
   const factory MyCartEvent.calculateTotal() = calculateTotal;
}

