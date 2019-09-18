class Bob {
  // Put your code here
  String response(String answer) {
    if (answer.endsWith(".")) {
      return ("Whatever.");
    } else if (answer == "") {
      return ("Fine. Be that way!");
    } else if (answer == "\n") {
      return ("Fine. Be that way!");
    } else if (answer.endsWith("!") && answer == answer.toUpperCase()) {
      return ('Whoa, chill out!');
    } else if (!answer.contains(RegExp(r"[0-9A-Za-z]")) &&
        answer.endsWith("?")) {
      return ("Sure.");
    } else if (answer.contains(RegExp(r"[0-9]")) && answer.endsWith("?")) {
      return ("Sure.");
    } else if (answer == answer.toUpperCase() && answer.endsWith("?")) {
      return ("Calm down, I know what I'm doing!");
    } else if (answer.endsWith("?")) {
      return ('Sure.');
    } else if (!answer.contains(RegExp(r"[A-Za-z]")) && answer.endsWith("?")) {
      return ("Sure.");
    } else if (answer.contains(RegExp(r"[\s]{9,}"))) {
      return ("Fine. Be that way!");
    } else if (!answer.contains(RegExp(r"[A-Za-z]"))) {
      return ("Whatever.");
    } else if (answer == answer.toUpperCase()) {
      return ("Whoa, chill out!");
    } else if (answer.endsWith("!")) {
      return ("Whatever.");
    } else if (answer.startsWith(" ")) {
      return ("Whatever.");
    } else if (answer.endsWith("     ")) {
      return ("Whatever.");
    } else if (answer.endsWith(" ")) {
      return ("Sure.");
    }
  }
}
