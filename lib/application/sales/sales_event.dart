part of 'sales_bloc.dart';

@freezed
class SalesEvent with _$SalesEvent {
  const factory SalesEvent.readsales() = readsales;
  const factory SalesEvent.changeorderStatus({
    required String status,
    required String artworkId,
    required String orderedUserId,
    required String orderId,
  }) = changeorderStatus;
     const factory SalesEvent.deletesalesReport({required ArtworkDetails artwork,required String orderId})=deletesalesReport;
}
