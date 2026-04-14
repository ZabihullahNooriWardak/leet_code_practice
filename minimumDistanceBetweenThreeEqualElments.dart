void main() {
  var test = [1, 1, 2, 3, 2, 1, 2];

  print(minimumDistance(test));
}

int minimumDistance(List<int> nums) {
  Map<int, List<int>> occurenceCache = {};

  for (int i = 0; i < nums.length; i++) {
    occurenceCache.putIfAbsent(nums[i], () => []);

    occurenceCache[nums[i]]!.add(i);
  }

  int smallest = 9223372036854775807;

  List values = occurenceCache.values.toList();

  for (int i = 0; i < values.length; i++) {
    if (values[i].length < 3) continue;

    final response = minimumDistanceSum(values[i]);
    if (response < smallest) {
      smallest = response;
    }
  }

  if (smallest == 9223372036854775807) {
    return -1;
  }

  return smallest;
}

int minimumDistanceSum(List<int> arr) {
  int smallest = 9223372036854775807;

  for (int i = 0; i < arr.length - 2; i++) {
    int distance =
        (arr[i + 1] - arr[i]) +
        (arr[i + 2] - arr[i]) +
        (arr[i + 2] - arr[i + 1]);

    if (distance < smallest) {
      smallest = distance;
    }
  }

  return smallest;
}
