// void main() {
//   print(threeSum([-1, 0, 1, 2, -1, -4]));
// }

// List<List<int>> threeSum(List<int> nums) {
//   var name = recursiveOne(nums, []);
//   return name ;
// }

//  recursiveOne(List<int> lst, List<List<int>> result) {
//   int first = lst[0];

//   int second = lst[1];

//   var target = (first + second) * (-1);

//   lst.removeAt(0);
//   if (lst.length < 2) {
//     print('base condition match here and boom $result');
//     return result;
//   }

//   List<int> tempArr = [];

//   for (int i = 0; i < lst.length; i++) {
//     if (lst[i] == target) {
//       tempArr.add(first);
//       tempArr.add(second);
//       tempArr.add(lst[i]);
//       // tempArr.sort();
//       result.add(tempArr);
//     }
//   }
//   print('before calling recursively this is the result array : ${result}');
//   recursiveOne(lst, result);
// }

void main() {
  var result = threeSum([-1, 0, 1, 2, -1, -4]);

  print(result);

  //[1,-1,-1,0]
  //[-1,-1,0,1]
}

List<List<int>> threeSum(List<int> nums) {
  List<List<int>> outPut = [];

  nums.sort();

  int previous = nums[0];

  for (int i = 0; i < nums.length; i++) {
    int target = nums[i] * (-1);

    if (i == nums.length - 1) {
      break;
    }
    // it was just for handling this test case 26:  [0,0,0,0]
    // and this logic brok this test case 85  :----> [-4,-1,-1,0,1,2];
    // if (i > 0 && target == (nums[i - 1] * (-1))) {
    //   continue;
    // }

    List<int> subArr = nums.sublist(i + 1);
    // just for handling repeated number like : [0,0,0,0,0];
    var result = isMoreThanThreeSame(nums, i);

    if (result) {
      continue;
    }

    if (nums[i] == previous && i != 0) {
      previous = nums[i];
      continue;
    }

    findUniquePairs(subArr, target, outPut);

    previous = nums[i];
  }

  return outPut;
}

void findUniquePairs(List<int> arr, int target, List<List<int>> outPut) {
  int left = 0;

  int right = arr.length - 1;

  while (left < right) {
    int sum = arr[left] + arr[right];

    if (sum == target) {
      target = target * (-1);

      var forInsert = [target, arr[left], arr[right]];

      outPut.add(forInsert);

      // Skip duplicates for left
      int currentLeft = arr[left];

      while (left < right && arr[left] == currentLeft) left++;

      // Skip duplicates for right
      int currentRight = arr[right];

      while (left < right && arr[right] == currentRight) right--;
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }
}

bool isMoreThanThreeSame(List<int> arr, int index) {
  var initial = arr[index];
  int counter = 1;
  for (int i = index + 1; i < arr.length; i++) {
    if (initial == arr[i]) {
      counter++;

      if (counter == 4) {
        return true;
      }
    } else {
      return false;
    }
  }
  return false;
}
