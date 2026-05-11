void main() {
  print(isMatch('anbc', 'an.bc'));
}

bool isMatch(String s, String p) {
  if (s == p) {
    return true;
  }
  if (p == '.*') {
    return true;
  }

  int counter = 1;

  int patternIndex = 0;

  for (int i = 0; i < s.length; i++) {
    if (i < s.length - 1 && s[i] == s[i + 1]) {
      counter++;

      continue;
    }

    if (counter > 1) {
      if (patternIndex < p.length - 1 &&
          ((p[patternIndex] == '.' || p[patternIndex] == s[i]) &&
              p[patternIndex + 1] == "*")) {
        patternIndex += 2;

        continue;
      } else {
        if (patternIndex >= p.length) {
          return true;
        }
        return false;
      }
    } else if (patternIndex < p.length - 1 &&
        (p[patternIndex] != s[i] && p[patternIndex] != '.') &&
        p[patternIndex + 1] == '*') {
      patternIndex += 2;
    }

    if (p[patternIndex] == '.' || p[patternIndex] == s[i]) {
      if (patternIndex < p.length - 1 && p[patternIndex + 1] == '*') {
        patternIndex += 2;
      } else {
        patternIndex += 1;
      }

      continue;
    }
    counter = 1;
  }

  return true;
}
