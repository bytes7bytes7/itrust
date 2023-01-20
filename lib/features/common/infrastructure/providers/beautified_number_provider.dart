import 'package:injectable/injectable.dart';

import '../../application/application.dart';

const _million = 1000000;
const _thousand = 1000;
const _one = 1;
const _precision = 1;

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

    if (n >= _million) {
      str = (n / _million).toStringAsFixed(_precision);
      suffix = _suffixNumberProvider.million;
    } else if (n >= _thousand) {
      str = (n / _thousand).toStringAsFixed(_precision);
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
