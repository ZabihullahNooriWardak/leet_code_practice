void main() {
  var t = [1, 3, 4, 7, 8, 9];
  print(threeSumClosest(t, 15));
}

// int threeSumClosest(List<int> nums, int target) {
//   late int first;
//   late int second;
//   int initial = (nums[0] + nums[1] + nums[2]);
//   int minDifference = target > initial ? target - initial : initial - target;
//   var difference = 0;
//   int result = initial;
//   late int temp;
//   for (int i = 0; i < nums.length; i++) {
//     if (i >= nums.length - 2) {
//       break;
//     }
//     first = nums[i];
//     second = nums[i + 1];

//     for (int j = i + 2; j < nums.length; j++) {
//       temp = nums[j] + first + second;
//       // print(temp);
//       difference = target > temp ? target - temp : temp - target;
//           if (difference < minDifference) {
//       minDifference = difference;
//       result = temp;
//     }
//     }
//     // print(minDifference);
//     // print(difference);

//   }
//   return result;
// }

// var test = [4, 0, 5, -5, 3, 3, 0, -4, -5];

// int threeSumClosestSecond(List<int> array, int target) {
//   int i = 0;
//   int j = 1;
//   int k = 2;
//   int temp = array[0] + array[1] + array[2];
//   int TempDif = target > temp ? target - temp : temp - target;
//   int result = temp;
//   while (k < array.length) {
//     temp = array[i] + array[j] + array[k];
//     print('this is temp : $temp');
//     int difference = target > temp ? target - temp : temp - target;
//     print('this is difference : $difference and tem difference : $TempDif');
//     if (difference < TempDif) {
//       print('Changing ................');
//       TempDif = difference;
//       result = temp;
//     }
//     i = j;
//     j = k;
//     k++;
//   }
//   return result;
// }
int threeSumClosest(List<int> nums, int target) {
  int temp = nums[0] + nums[1] + nums[2];
  int TempDif = target > temp ? target - temp : temp - target;
  int result = temp;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      for (int k = j + 1; k < nums.length; k++) {
        temp = nums[i] + nums[j] + nums[k];
        int difference = target > temp ? target - temp : temp - target;
        if (difference == 0) {
          return temp;
        }
        if (difference < TempDif) {
          TempDif = difference;
          result = temp;
        }
      }
    }
  }
  return result;
}
