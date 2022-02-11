import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'counter_state.freezed.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    //NullSafetyのためデフォルト値の指定が必須
    @Default(0) int count,
  }) = _Counter;
}