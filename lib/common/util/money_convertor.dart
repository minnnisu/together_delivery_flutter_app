class MoneyConvertor{
  static String addCommasToNumber(int number) {
    String str = number.toString();
    RegExp regExp = RegExp(r'(?<=\d)(?=(\d{3})+(?!\d))');
    return str.replaceAllMapped(regExp, (Match match) => ',');
  }

  static String removeCommasFromNumber(String numberWithCommas) {
    return numberWithCommas.replaceAll(',', '');
  }
}