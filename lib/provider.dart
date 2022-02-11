import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'counter_state.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, CounterState>(
  (ref) => CounterNotifier(const CounterState()),
);

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier(CounterState state) : super(state);

  // state は immutable なため、copyWith で複製する
  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}