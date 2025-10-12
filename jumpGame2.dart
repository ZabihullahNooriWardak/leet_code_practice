void main() {
  print('answer : ${jump([4, 5, 2, 4, 3, 2, 1, 1, 8, 3, 2])}');
  print('answer : ${jump([0])}');
}

int jump(List<int> nums) {
  int i = 0;
  int jumps = 0;
  if (nums.length == 1) {
    return jumps;
  }
  while (i < nums.length) {
    if (i + nums[i] >= nums.length - 1) {
      print('breaking');
      jumps++;
      break;
    }
    jumps++;
    int currentlyBest = findBestIndex(i, nums);
    print('currently best = $currentlyBest');
    i = currentlyBest;
  }
  return jumps;
}

int findBestIndex(int currentIndex, List<int> array) {
  int bestIndex = currentIndex + 1;
  int maxJumpBestCanGo = bestIndex + array[bestIndex];
  for (int i = currentIndex + 1; i <= array[currentIndex] + currentIndex; i++) {
    if (i + array[i] > maxJumpBestCanGo) {
      maxJumpBestCanGo = i + array[i];
      bestIndex = i;
    }
  }
  return bestIndex;
}
