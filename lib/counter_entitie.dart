import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'counter_entitie.freezed.dart';

@freezed
class Counter with _$Counter {
  @Assert('count >= 0')
  const factory Counter({
    @Default(0) int count,
  }) = _Counter;
}