void main() {}

int maxSubarraySum(List<int> nums, int k) {
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

  int max = sums[0];

  for (int i = 0; i < sums.length; i++) {
    if (sums[i] > max) {
      max = sums[i];
    }
    return max;
  }

  return 0;
}
