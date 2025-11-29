void main() {
  // [-1,-2,-3,-4,-5]   k = 4 
  // print [-10,-9,-7,-4]
  //expected -10    mine : -4 
  maxSubarraySum([1, 2], 1);
}

int maxSubarraySum(List<int> nums, int k) {
  // [1,2] and k = 1 ;  expected 3 but return 1
  List<int> sums = [];

  for (int i = 0; i < nums.length; i++) {
    int tempTotal = 0;

    for (int j = i; j < nums.length; j++) {
      //
      tempTotal += nums[j];

      if ((j + 1) % k == 0) {
        sums.add(tempTotal);
      }
    }
  }

  print('this is ok broh : $sums');

  int max = sums[0];

  for (int i = 0; i < sums.length; i++) {
    if (sums[i] > max) {
      max = sums[i];
    }
  }

  return max;
}
