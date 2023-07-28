part of 'dropdown_button_bloc.dart';

@freezed
class DropdownButtonState with _$DropdownButtonState {
  const factory DropdownButtonState.dropdownButtoninitial() = dropdownButtoninitial;
  const factory DropdownButtonState.displayselectedCategory({required String selectedValue}) = displayselectedCategory;
 const factory DropdownButtonState.displayselectedPrice({required String selectedValue}) = displayselectedPrice;
  const factory DropdownButtonState.displayselectedAvailability({required String selectedValue}) = displayselectedAvailability;
}
