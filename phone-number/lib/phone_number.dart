class PhoneNumber {
  // Put your code here
  String clean(String number) {
    var result = number.replaceAll(RegExp(r"[^0-9]+"), '');

    if (result.length == 9 || result.length > 11) {
      return null;
    } else if (result.length == 11 && !result.startsWith("1")) {
      return null;
    } else if (result.length == 11 && result.startsWith("1")) {
      return result.substring(1);
    } else if (result.startsWith("1") || result.startsWith("0")) {
      return null;
    } else if (result.substring(3).startsWith("0") ||
        result.substring(3).startsWith("1")) {
      return null;
    }
    return result;
  }
}
