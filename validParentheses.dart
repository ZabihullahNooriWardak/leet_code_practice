void main() {
  print(isValid('()'));
  // print(isValid('()[]{}'));
  // print(isValid('(]'));
  // print(isValid('([])'));
}

bool isValid(String s) {
  var arr = [];
  if (arr.length == 1) {
    return false;
  }
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(' || s[i] == '[' || s[i] == '{') {
      print('adding ${s[i]}');
      arr.add(s[i]);
    } else {
      if (s[i] == ')') {
        print(
            'this is length :${arr.length}and this is value : ${arr[arr.length - 1]}');
        if (arr.length > 0 && arr[arr.length - 1] == '(') {
          print('removing ${arr[arr.length - 1]}');
          arr.removeAt(arr.length - 1);
        } else {
          print('before false 1');
          return false;
        }
      } else if (s[i] == ']') {
        if (arr.length > 0 && arr[arr.length - 1] == '[') {
          print('removing ${arr[arr.length - 1]}');
          arr.removeAt(arr.length - 1);
        } else {
          print('before false 2');
          return false;
        }
      } else if (s[i] == '}') {
        if (arr.length > 0 && arr[arr.length - 1] == '{') {
          print('removing ${arr[arr.length - 1]}');
          arr.removeAt(arr.length - 1);
        } else {
          print('before false 3');
          return false;
        }
      }
    }
  }
  print('before false 4');
  return arr.length == 0 ? true : false;
}
