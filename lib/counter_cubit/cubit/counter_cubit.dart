import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;

  void increament(int x){
    x++;
    counter = x;
    emit(IncreamentCounterState());
  }

  void decreament(int x){
    x--;
    counter = x;
    emit(DecreamentCounterState());
  }
}
