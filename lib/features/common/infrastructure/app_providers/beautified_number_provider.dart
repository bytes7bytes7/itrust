import 'package:injectable/injectable.dart';

import '../../application/application.dart';

const _million = 1000000;
const _millionDivider = _million / _toDoubleDivider;
const _thousand = 1000;
const _thousandDivider = _thousand / _toDoubleDivider;
const _toDoubleDivider = 10;
const _one = 1;

@Singleton(as: BeautifiedNumberProvider)
class ProdBeautifiedNumberProvider implements BeautifiedNumberProvider {
  const ProdBeautifiedNumberProvider({
    required SuffixNumberProvider suffixNumberProvider,
  }) : _suffixNumberProvider = suffixNumberProvider;

  final SuffixNumberProvider _suffixNumberProvider;

  @override
  String beautify(int n) {
    var str = '';
    var suffix = '';

    if (n <= 0) {
      return '0';
    }

    if (n >= _million) {
      str = '${(n / _millionDivider).floor() / _toDoubleDivider}';
      suffix = _suffixNumberProvider.million;
    } else if (n >= _thousand) {
      str = '${(n / _thousandDivider).floor() / _toDoubleDivider}';
      suffix = _suffixNumberProvider.thousand;
    } else if (n >= _one) {
      str = '$n';
    }

    if (str.isEmpty) {
      return str;
    }

    while (str.contains('.') && str.endsWith('0') || str.endsWith('.')) {
      str = str.substring(0, str.length - 1);
    }

    return '$str$suffix';
  }
}
