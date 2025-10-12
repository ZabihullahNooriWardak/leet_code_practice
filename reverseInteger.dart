void main() {}

int reverse(int x) {
  int copyOfX = x;
  if (x < 0) {
    x *= -1;
  }
  if (x < 10) {
    if (copyOfX < 0) {
      return x * -1;
    }
    return x;
  }

  List<int> arr = [];
  while (x >= 10) {
    int remaining = x % 10;
    arr.add(remaining);
    x ~/= 10;
  }
  int reversed = arr[0];
  for (int i = 0; i < arr.length; i++) {
    reversed *= 10;
    //it means we have next index broh .
    if (i + 1 < arr.length) {
      reversed += arr[i + 1];
    }
  }
  reversed += x;
  if (copyOfX < 0) {
    reversed *= -1;
  }
  if (reversed < -2147483648 || reversed > 2147483647) {
    return 0;
  }

  return reversed;
}
