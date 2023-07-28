// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_button_event.dart';
part 'dropdown_button_state.dart';
part 'dropdown_button_bloc.freezed.dart';

class DropdownButtonBloc
    extends Bloc<DropdownButtonEvent, DropdownButtonState> {
  DropdownButtonBloc() : super(const dropdownButtoninitial()) {
    on<onselected>((event, emit) {
      if (event.isCatgory) {
        emit(displayselectedCategory(selectedValue: event.selectedValue));
      }
      if (event.isPrice) {
        emit(displayselectedPrice(selectedValue: event.selectedValue));
      }
      if (event.isAvailability) {
        emit(displayselectedAvailability(selectedValue: event.selectedValue));
      }
    });
  }
}
