// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/my_cart/cart.dart';
import '../../domain/models/artwork_details.dart';

part 'my_cart_event.dart';
part 'my_cart_state.dart';
part 'my_cart_bloc.freezed.dart';

class MyCartBloc extends Bloc<MyCartEvent, MyCartState> {
  MyCartBloc() : super(const mycartinitial()) {
    on<showcart>((event, emit) async {
      final List<ArtworkDetails> cartList = await readCart();
      num total = 0;
      for (ArtworkDetails data in cartList) {
        total += int.parse(data.price);
      }
      emit(displaycart(artworklist: cartList, total: total));
    });
    on<addtocart>((event, emit) async {
      await addtoCart(event.artwork);
      add(const showcart());
      add(isaddedtoCart(artworkId: event.artwork.artworkId));
    });
    on<removefromCart>((event, emit) async {
      await removeFromCart(event.artworkId);
      add(const showcart());
      add(isaddedtoCart(artworkId: event.artworkId));
    });
    on<isaddedtoCart>((event, emit) async {
      final bool isAdded = await isAddedToCart(event.artworkId);

      emit(isaddedtocart(isaddedTocart: isAdded));
    });
    on<clearcart>((event, emit) async {
      await clearCart();
      add(const showcart());
    });

    on<calculateTotal>((event, emit) async {
      //   final List<ArtworkDetails> cartList = await readCart();
    });
  }
}
