import 'package:intl/intl.dart';

class HumanFormat {

  //El static es para llamar a su metodo sin necesidad de una instancia
  static String humanReadbleNumber(double number) {
    final formatterNumber =  NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatterNumber;
  }
}