import 'package:bloc/bloc.dart';
import 'package:contador_bloc/app/data/models/blocs/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc() : super(0) {

    on<CounterIncremented >(
      (event, emit) => emit(state + 1));
  
    on<CounterDecremented >(
      (event, emit) => emit(state - 1));
  }

}