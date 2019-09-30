int score(String str) {
  List input = str.toUpperCase().split("");

  List<String> one = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"];
  List<String> two = ["D", "G"];
  List<String> three = ["B", "C", "M", "P"];
  List<String> four = ["F", "H", "V", "W", "Y"];
  List<String> five = ["K"];
  List<String> eight = ["J", "X"];
  List<String> ten = ["Q", "Z"];

  var count = 0;

  for (var i = 0; i < input.length; i++) {
    if (one.contains(input[i])) {
      count++;
    } else if (two.contains(input[i])) {
      count += 2;
    } else if (three.contains(input[i])) {
      count += 3;
    } else if (four.contains(input[i])) {
      count += 4;
    } else if (five.contains(input[i])) {
      count += 5;
    } else if (eight.contains(input[i])) {
      count += 8;
    } else if (ten.contains(input[i])) {
      count += 10;
    }
  }
  return count;
}
