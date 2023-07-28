// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/sales/sales.dart';
import '../../domain/models/artwork_details.dart';
import '../../domain/models/sales.dart';

part 'sales_event.dart';
part 'sales_state.dart';
part 'sales_bloc.freezed.dart';

class SalesBloc extends Bloc<SalesEvent, SalesState> {
  SalesBloc() : super(const salesinitial()) {
    on<readsales>((event, emit) async {
      emit(const displaySales(salesList: [],isLoading: true,isError: false,),);
   try {  final salesList = await readSales();
      emit(displaySales(salesList: salesList,isLoading: false,isError: false,),);}
      catch(e){
           emit(const displaySales(salesList: [],isLoading: false,isError: true,),);
      }
    });
    on<changeorderStatus>((event, emit) async {
    await  changeOrderStatus(
        event.status,
        event.artworkId,
        event.orderedUserId,
        event.orderId,
      );
      add(const readsales());
    });
     on<deletesalesReport>((event, emit) async {
    await  deleteSalesReport(
      
        event.artwork,
        
        event.orderId,
      );
      add(const readsales());
    });
  }
}
