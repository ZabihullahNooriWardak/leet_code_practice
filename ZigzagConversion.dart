void main() {
  String test = 'A';
  print(convert(test, 1));
}

String convert(String s, int numRows) {
  List<List<String>> container = [];

  int k = 0;

  while (k < s.length) {
    for (int i = 0; i < numRows; i++) {
      if (container.length < numRows) {
        container.add([]);
      }

      if (k < s.length) {
        container[i].add(s[k]);
      }

      k++;
    }

    for (int j = numRows - 2; j > 0; j--) {
      if (k < s.length) {
        container[j].add(s[k]);
      }

      k++;
    }
  }

  String result = '';

  for (int i = 0; i < container.length; i++) {
    int j = 0;
    while (j < container[i].length) {
      result += container[i][j];
      j++;
    }
  }
  return result;
}
