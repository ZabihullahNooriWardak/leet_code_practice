void main() {}

List<String> letterCombinations(String digits) {
  if (digits.isEmpty) {
    return [];
  }

  var phone = {
    '2': 'abc',
    '3': 'def',
    '4': 'ghi',
    '5': 'jkl',
    '6': 'mno',
    '7': 'pqrs',
    '8': 'tuv',
    '9': 'wxyz',
  };

  List<String> result = [];

  void backTrack(int index, String path) {
    if (index == digits.length) {
      result.add(path);
      return;
    }
    var letters = phone[digits[index]]!;
    for (int i = 0; i < letters.length; i++) {
      backTrack(index + 1, path + letters[i]);
    }
  }

  backTrack(0, '');
  return result;
}
