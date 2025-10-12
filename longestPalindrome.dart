void main() {
  print(longestPalindrome('abcdeeedakdcgcccccccccccccccdddddddds'));
}

// abcdeeedakdcgcc
//
String longestPalindrome(String s) {

  List<String> arr = [];
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j < s.length; j++) {
      if (j != s.length) {
        var result = isPalindrome(s, i, j);
        if (result) {
          arr.add(extractString(s, i, j));
        }
      }
    }
  }
  var result = findTheLargestInArray(arr);
  if (result.isEmpty) {
    return s[0];
  }
  return result;
}

bool isPalindrome(String s, int StartIndex, int endIndex) {
  int reverse = endIndex;
  for (int i = StartIndex; i <= endIndex; i++) {
    if (i == reverse || i > reverse) {
      break;
    }
    if (s[i] != s[reverse]) {
      return false;
    }

    reverse--;
  }
  return true;
}

String extractString(String s, int start, int end) {
  // var str = '';
  // for (int i = start; i <= end; i++) {
  //   str += s[i];
  // }
  return s.substring(start,end+1);
}

String findTheLargestInArray(List<String> arr) {
  var max = 0;
  var str = '';
  for (int i = 0; i < arr.length; i++) {
    if (arr[i].length > max) {
      max = arr[i].length;
      str = arr[i];
    }
  }
  return str;
}
