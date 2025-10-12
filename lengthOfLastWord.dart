void main() {
  print(lengthOfLastWord('Hello world'));
  print(lengthOfLastWord('  fly me   to   the moon  '));
}

int lengthOfLastWord(String s) {
  int counter = 0;
  bool hasFacedSpace = false;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == ' ') {
      hasFacedSpace = true;
      continue;
    }

    if (hasFacedSpace) {
      counter = 0;
    }
    hasFacedSpace = false;
    counter++;
  }
  return counter;
}
