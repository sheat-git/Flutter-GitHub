import 'package:drift/drift.dart';

extension ValueOrNull<T> on Value<T> {
  T? get valueOrNull => present ? value : null;
}
