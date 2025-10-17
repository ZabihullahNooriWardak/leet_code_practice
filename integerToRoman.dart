void main() {
  print(intToRoman(3870));
}

String intToRoman(int num) {
  List<int> arr = [];
  String roman = '';
  while (num >= 10) {
    int remaining = num % 10;
    arr.add(remaining);
    num ~/= 10;
  }
  arr.add(num);
// 3209 =====>  [9,0,2,3];
  for (int i = arr.length - 1; i >= 0; i--) {
    if (arr[i] == 0) {
      continue;
    }
    // it means we have 1000 or 2000 or 3000
    if (i == 3) {
      if (arr[i] == 1) {
        roman += 'M';
      } else if (arr[i] == 2) {
        roman += "MM";
      } else if (arr[i] == 3) {
        roman += "MMM";
      }
      //now it means 100 or 200 or 300 or so on ....
    } else if (i == 2) {
      if (arr[i] == 1) {
        roman += 'C';
      } else if (arr[i] == 2) {
        roman += "CC";
      } else if (arr[i] == 3) {
        roman += "CCC";
      } else if (arr[i] == 4) {
        roman += "CD";
      } else if (arr[i] == 5) {
        roman += "D";
      } else if (arr[i] == 6) {
        roman += "DC";
      } else if (arr[i] == 7) {
        roman += "DCC";
      } else if (arr[i] == 8) {
        roman += "DCCC";
      } else if (arr[i] == 9) {
        roman += "CM";
      }
    } else if (i == 1) {
      if (arr[i] == 1) {
        roman += 'X';
      } else if (arr[i] == 2) {
        roman += "XX";
      } else if (arr[i] == 3) {
        roman += "XXX";
      } else if (arr[i] == 4) {
        roman += "XL";
      } else if (arr[i] == 5) {
        roman += "L";
      } else if (arr[i] == 6) {
        roman += "LX";
      } else if (arr[i] == 7) {
        roman += "LXX";
      } else if (arr[i] == 8) {
        roman += "LXXX";
      } else if (arr[i] == 9) {
        roman += "XC";
      }
    } else if (i == 0) {
      if (arr[i] == 1) {
        roman += 'I';
      } else if (arr[i] == 2) {
        roman += "II";
      } else if (arr[i] == 3) {
        roman += "III";
      } else if (arr[i] == 4) {
        roman += "IV";
      } else if (arr[i] == 5) {
        roman += "V";
      } else if (arr[i] == 6) {
        roman += "VI";
      } else if (arr[i] == 7) {
        roman += "VII";
      } else if (arr[i] == 8) {
        roman += "VIII";
      } else if (arr[i] == 9) {
        roman += "IX";
      }
    }
  }
  return roman;
}
class Solution {
String intToRoman(int num) {
  String convertRoman = "";
  Map<int, String> roman = {
    1000: "M",
    900: "CM",
    500: "D",
    400: "CD",
    100: "C",
    90: "XC",
    50: "L",
    40: "XL",
    10: "X",
    9: "IX",
    5: "V",
    4: "IV",
    1: "I",
  };
  if (0 <= num && num <= 3999) {
    for (int currentNumber in roman.keys) {
      int remainder = num ~/ currentNumber;
      if (remainder != 0) {
        convertRoman += roman[currentNumber]! * remainder;
        num = num - currentNumber * remainder;
      }
    }
    return convertRoman;
  } else {
    return "";
  }
}
}