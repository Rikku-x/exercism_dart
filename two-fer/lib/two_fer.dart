String twofer([String name = "you"]) {
  // Put your code here
  var output = "One for you, one for me.";
  if (name == "") {
    return output;
  } else {
    return "One for " + name + ", one for me.";
  }
}
