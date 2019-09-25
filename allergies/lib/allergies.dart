class Allergies {
  // Put your code here

  var details = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
  };

  bool allergicTo(String food, int point) {
    var score = details[food];

    if (point == 0) {
      return false;
    } else if (score == point) {
      return true;
    } else {
      int diff = point - score;
      if (details.containsValue(diff)) {
        return true;
      } else if (!details.containsValue(diff)) {
        return false;
      }
    }
  }

  List<String> list(num point) {
    if (point == 0) {
      return <String>[];
    } else {
      String result = "";
      details.forEach((k, v) {
        if (point == v) {
          result = k;
        }
      });
      return [result];
    }
  }
}
