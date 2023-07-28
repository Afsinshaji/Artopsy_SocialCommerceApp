// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/shopping_address.dart';

part 'delivery_bottom_sheet_event.dart';
part 'delivery_bottom_sheet_state.dart';
part 'delivery_bottom_sheet_bloc.freezed.dart';

class DeliveryBottomSheetBloc
    extends Bloc<DeliveryBottomSheetEvent, DeliveryBottomSheetState> {
  DeliveryBottomSheetBloc() : super(const deliveryBottomSheetinitial()) {
    on<onSelected>((event, emit) {
      emit(displaySelectedValue(address: event.value));
    });
  }
}
