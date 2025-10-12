void main() {}

int myAtoi(String s) {
  bool intOrSignFacedInTheBegining = false;
  String newOnlyNumberString = "";
  for (int i = 0; i < s.length; i++) {
    if (!intOrSignFacedInTheBegining) {
      if (isWhiteSpace(s[i])) {
        continue;
      }
      if (isOtherString(s[i])) {
        return 0;
      }
      if (isSign(s[i]) || isNumber(s[i])) {
        newOnlyNumberString += s[i];
        intOrSignFacedInTheBegining = true;
      }
    } else {
      if (isNumber(s[i])) {
        newOnlyNumberString += s[i];
      } else {
        break;
      }
    }
  }
  if (newOnlyNumberString == "+" || newOnlyNumberString == "-") {
    return 0;
  }
  if (newOnlyNumberString.isEmpty) {
    return 0;
  }
  dynamic result;
  try {
    result = int.parse(newOnlyNumberString);
  } catch (e) {
    if(newOnlyNumberString[0]=='-'){
        return -2147483648;
    }
      return 2147483647;
  }
    if (result < -2147483648) {
      return -2147483648;
    }
    if (result > 2147483647) {
      return 2147483647;
  }
  return result;
}

bool isNumber(String s) {
  if (s == '0' ||
      s == '1' ||
      s == '2' ||
      s == '3' ||
      s == '4' ||
      s == '5' ||
      s == '6' ||
      s == '7' ||
      s == '8' ||
      s == '9') {
    return true;
  }
  return false;
}

bool isSign(String s) {
  if (s == "+" || s == '-') {
    return true;
  }
  return false;
}

bool isWhiteSpace(String s) {
  if (s == " ") {
    return true;
  }

  return false;
}

bool isOtherString(String s) {
  if (!isWhiteSpace(s) && !isSign(s) && !isNumber(s)) {
    return true;
  }
  return false;
}
