void main() {
  print(findMissingNumber([3, 4, 6, 7]));
}

// [3,4,6,7]
int findMissingNumber(List<int> nums) {
  if (nums.length == 0) {
    return 1;
  }

  nums.sort();

  var first = nums[0];

  for (int i = 1; i < nums.length - 1; i++) {
    var differnce = nums[i] - first;
    if (differnce > 1) {
      return first + 1;
    }
    first = nums[i];
  }
  return 0;
}
