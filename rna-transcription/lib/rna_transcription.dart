class RnaTranscription {
  // Put your code here
  String toRna(String rna) {
    var char = rna.split("");
    var letter = "";
    for (var i = 0; i < char.length; i++) {
      letter = char[i];
      if (letter == "G") {
        char[i] = "C";
      } else if (letter == "C") {
        char[i] = "G";
      } else if (letter == "T") {
        char[i] = "A";
      } else if (letter == "A") {
        char[i] = "U";
      } else
        throw new ArgumentError();
    }
    return char.join();
  }
}
