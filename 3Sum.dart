void main() {
  var arr1 = [-4, -1, -1, 0, 1, 2];

  var arr2 = [-1, -1, 0, 1];

  var arr3 = [0, 0, 0, 0];

  print(threeSum([-2, 0, 1, 1, 2]));
}


// test case which my solution failed in : [-4,-2,-2,-2,0,1,2,2,2,3,3,4,4,6,6]
// outPut : [[-4,-2,6],[-4,0,4],[-4,1,3],[-4,2,2],[-2,-2,4],[-2,0,2],[-2,-2,4],[-2,0,2]]
// expected : [[-4,-2,6],[-4,0,4],[-4,1,3],[-4,2,2],[-2,-2,4],[-2,0,2]]
List<List<int>> threeSum(List<int> nums) {
  //
  List<List<int>> outPut = [];

  nums.sort();

  for (int i = 0; i < nums.length; i++) {
    //
    int target = nums[i] * (-1);

    if (i == nums.length - 1) {
      break;
    }

    List<int> subArr = nums.sublist(i + 1);

    findUniquePairs(subArr, target, outPut);
  }

  return outPut;
}

void findUniquePairs(List<int> arr, int target, List<List<int>> outPut) {
  //
  int left = 0;

  int right = arr.length - 1;

  while (left < right) {
    //
    int sum = arr[left] + arr[right];

    if (sum == target) {
      //
      var temp = target * (-1);

      var forInsert = [temp, arr[left], arr[right]];

      List<int>? lastElementOfOutPut = null;
      //
      if (outPut.length > 0) {
        //
        lastElementOfOutPut = outPut[outPut.length - 1];
      }

      bool? result = null;

      if (lastElementOfOutPut != null) {
        //
        result = isEqual(forInsert, lastElementOfOutPut);
      }

      if (result != null && result) {
        //
        left++;

        continue;
        //
      }

      outPut.add(forInsert);

      left++;
      //
    } else if (sum < target) {
      //
      left++;
      //
    } else {
      //
      right--;
      //
    }
  }
}

bool isEqual(List<int> arr1, List<int> arr2) {
  for (int i = 0; i < 3; i++) {
    if (arr1[i] != arr2[i]) {
      return false;
    }
  }
  return true;
}
