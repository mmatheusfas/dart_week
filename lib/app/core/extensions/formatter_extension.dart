import 'package:intl/intl.dart';

extension FormatterExtension on double {
  String get currencyPtbr {
    final currencyFormat =
        NumberFormat.currency(locale: 'pt_BR', symbol: r'R$');

    return currencyFormat.format(this);
  }
}
