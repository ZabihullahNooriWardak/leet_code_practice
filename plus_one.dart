void main() {
  print('1 : ${plusOne([3, 9, 9])}');
  print('2: ${plusOne([9])}');
  print('3:${plusOne([3, 2, 9])}');
  print('4:${plusOne([3])}');
  print('5:${plusOne([8, 1, 1])}');
}

//[3,9,9]
//[9]
//[9,9]
//[3,2,9]
//[3]
//[8,1,1]

List<int> plusOne(List<int> digits) {
  for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] != 9) {
      digits[i] = digits[i] + 1;
      return digits;
    }

    if (i != 0 && digits[i] == 9) {
      digits[i] = 0;

      continue;
    }

    if (i == 0 && digits[i] != 9) {
      digits[i] = digits[i] + 1;
      return digits;
    }

    if (i == 0 && digits[i] == 9) {
      digits[i] = 0;

      digits.insert(0, 1);

      return digits;
    }
  }

  return [];
}
