part of 'delivery_bottom_sheet_bloc.dart';

@freezed
class DeliveryBottomSheetEvent with _$DeliveryBottomSheetEvent {
  const factory DeliveryBottomSheetEvent.onSelected({required ShoppingAddress? value}) = onSelected;
}