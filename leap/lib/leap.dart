class Leap {
  // Put your code here
  bool leapYear(int check) {
    if (check % 400 == 0 || check % 4 == 0 && check % 100 != 0) {
      return true;
    } else
      return false;
  }
}
