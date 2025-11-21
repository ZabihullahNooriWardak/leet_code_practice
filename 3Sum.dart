void main() {
  print(threeSum([0, 0, 0, 0]));
}

List<List<int>> threeSum(List<int> nums) {
  //
  nums.sort();

  List<List<int>> triplets = [];

  for (int i = 0; i < nums.length; i++) {
    //

    if (i != 0 && nums[i] == nums[i - 1]) {
      continue;
    }

    int target = nums[i] * (-1);

    if (i + 1 > nums.length - 1) continue;

    for (int j = i + 1; j < nums.length; j++) {
      //
      if (j + 1 > nums.length - 1) continue;

      if (j != i + 1 && nums[j] == nums[j - 1]) {
        continue;
      }

      for (int k = j + 1; k < nums.length; k++) {
        if (k != j + 1 && nums[k] == nums[k - 1]) {
          continue;
        }

        //
        if (nums[j] + nums[k] == target) {
          //
          var temp = [nums[j], nums[k], target * (-1)];

          // temp.sort();

          triplets.add(temp);
        }
      }
    }
  }
  return triplets;
}

// void main() {
//   var result = threeSum([0, 0, 0, 0]);
//   // [-4,-1,-1,0,1,2]
//   print(result);
// }

// List<List<int>> threeSum(List<int> nums) {
//   List<List<int>> outPut = [];

//   nums.sort();

//   int previous = nums[0];

//   for (int i = 0; i < nums.length; i++) {
//     int target = nums[i] * (-1);

//     if (i == nums.length - 1) {
//       break;
//     }

//     List<int> subArr = nums.sublist(i + 1);
//     // just for handling repeated number like : [0,0,0,0,0];
//     var result = isMoreThanThreeSame(nums, i);

//     if (result) {
//       var temp = [nums[i], nums[i], nums[i]];
//       if (nums[i] == 0) {
//         outPut.add(temp);
//       }
//       continue;
//     }

//     if (nums[i] == previous && i != 0) {
//       previous = nums[i];
//       continue;
//     }

//     findUniquePairs(subArr, target, outPut);

//     previous = nums[i];
//   }

//   return outPut;
// }

// void findUniquePairs(List<int> arr, int target, List<List<int>> outPut) {
//   int left = 0;

//   int right = arr.length - 1;

//   while (left < right) {
//     int sum = arr[left] + arr[right];

//     if (sum == target) {
//       var temp = target * (-1);

//       var forInsert = [temp, arr[left], arr[right]];

//       outPut.add(forInsert);

//       // Skip duplicates for left
//       int currentLeft = arr[left];

//       while (left < right && arr[left] == currentLeft) left++;

//       // Skip duplicates for right
//       int currentRight = arr[right];

//       while (left < right && arr[right] == currentRight) right--;
//     } else if (sum < target) {
//       left++;
//     } else {
//       right--;
//     }
//   }
// }

// bool isMoreThanThreeSame(List<int> arr, int index) {
//   var initial = arr[index];
//   int counter = 1;
//   for (int i = index + 1; i < arr.length; i++) {
//     if (initial == arr[i]) {
//       counter++;

//       if (counter == 4) {
//         return true;
//       }
//     } else {
//       return false;
//     }
//   }
//   return false;
// }
