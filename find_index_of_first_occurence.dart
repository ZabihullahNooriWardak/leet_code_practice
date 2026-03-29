void main() {
  print(strStr("mississippi", "issip"));
}

int strStr(String haystack, String needle) {
  print(needle.length);
  int j = 0;
  int indexToreturn = -1;
  for (int i = 0; i < haystack.length; i++) {
    if (haystack[i] == needle[j]) {
      if (j <= needle.length - 1) {
        j++;
        print(j);

        if (j == needle.length) {
          indexToreturn = i - needle.length + 1;

          print('before returning ************** one ');

          return indexToreturn;
        }
      }
    } else {
      indexToreturn = -1;
      j = 0;
    }
  }
  print('Two****************');
  return indexToreturn;
}
