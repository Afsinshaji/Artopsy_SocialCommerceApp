part of 'sales_bloc.dart';

@freezed
class SalesState with _$SalesState {
  const factory SalesState.salesinitial() = salesinitial;
  const factory SalesState.displaySales({required List<Sales>salesList,required bool isLoading,required bool isError,}) = displaySales;
}
