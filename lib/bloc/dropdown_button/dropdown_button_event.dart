part of 'dropdown_button_bloc.dart';

@freezed
class DropdownButtonEvent with _$DropdownButtonEvent {
  const factory DropdownButtonEvent.onselected(
      {required String selectedValue,
      required bool isCatgory,
      required bool isPrice,
      required bool isAvailability,}) = onselected;
}
