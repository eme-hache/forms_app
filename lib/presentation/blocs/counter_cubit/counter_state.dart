part of 'counter_cubit.dart';

// sealed class CounterState {}

// final class CounterInitial extends CounterState {}

class CounterState {
  final int counter;
  final int transactionCount;

  CounterState({this.counter = 0, this.transactionCount = 0});

  copyWith({
    int? counter,
    int? transactionCount
  }) => CounterState(
    counter: counter ?? this.counter,
    transactionCount: transactionCount ?? this.transactionCount
  );
}
