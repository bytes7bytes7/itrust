import 'dart:math';

extension DoubleX on double {
  String toStringWithLimitedPrecision(
    int limitPrecision, {
    bool floor = false,
  }) {
    final precisionNum = pow(10, limitPrecision);
    final floored = (this * precisionNum).floor() / precisionNum;

    final result = List.from(floored.toStringAsFixed(limitPrecision).split(''));

    while (result.last == '0') {
      result.removeLast();
    }

    if (result.last == '.') {
      result.removeLast();
    }

    return result.join('');
  }
}
