import 'package:bloc/bloc.dart';
import 'package:contador_bloc/app/data/models/blocs/counter_event.dart';
import 'package:contador_bloc/app/data/models/blocs/counter_state.dart';

class CounterBloc extends Bloc<CounterState, CounterEvent>{
  final counter = CounterModel()

  CounterBloc() : super(CounterState(counter: 0)) {

    on<CounterIncrementEvent>(
      (event, emit) => emit(CounterState(counter: state.counter + 1))); 
  
    on<CounterDecrementEvent>(
      (event, emit) => emit(CounterState(counter: state.counter - 1)));

    on<ResetEvent>(
      (event, emit) => emit(CounterState(counter: 0)));
    
  }

}