void main() {
  print(isPalindrome(120));
}

bool isPalindrome(int x) {
  int copyOfX = x;
  if (x < 0) {
    return false;
  }
  if (x < 10) {
    return true;
  }
  List<int> arr = [];
  while (x >= 10) {
    int remaining = x % 10;
    arr.add(remaining);
    x ~/= 10;
  }
  int total = arr[0];
  for (int i = 0; i < arr.length; i++) {
    total *= 10;
    //it means we have next index broh .
    if (i + 1 < arr.length) {
      total += arr[i + 1];
    }
  }
  total += x;
    print(total);

  if (total == copyOfX) {
    return true;
  }
  return false;
}
