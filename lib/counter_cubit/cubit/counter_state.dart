part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class IncreamentCounterState extends CounterState{}

class DecreamentCounterState extends CounterState {}
