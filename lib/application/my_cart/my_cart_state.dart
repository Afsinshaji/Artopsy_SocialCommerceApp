part of 'my_cart_bloc.dart';

@freezed
class MyCartState with _$MyCartState {
  const factory MyCartState.mycartinitial() = mycartinitial;
  const factory MyCartState.displaycart({required List<ArtworkDetails>  artworklist,required num total}) = displaycart;
  const factory MyCartState.isaddedtocart({required bool isaddedTocart}) = isaddedtocart;
  const factory MyCartState.displaytotal({required num total}) = displaytotal;
}

