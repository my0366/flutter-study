import 'package:bloc/bloc.dart';
import 'package:flutter_study/StateManage/Bloc/Bloc_event.dart';
import 'package:flutter_study/StateManage/Bloc/Bloc_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<IncrementEvent>((event, emit){
      emit(CounterState(counter: state.counter + 1));
    });
    on<DecrementEvent>((event, emit){
      emit(CounterState(counter: state.counter - 1));
    });
  }
}