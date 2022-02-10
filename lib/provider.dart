import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'counter_entitie.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, Counter>(
  (ref) => CounterNotifier(const Counter()),
);

class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier(Counter state) : super(state);

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}