void main() {
  var arr = [1, 8, 6, 2, 5, 4, 8, 3, 7];
  // var arr1 = [1, 1];
  print(maxAreaa(arr));
  // print(maxArea(arr1));
  print(maxAreaa([8, 7, 2, 1])); //expected 7 but prints 3 . ok broh.
}

int maxArea(List<int> height) {
  int maxWater = 0;
  int waterInEachIteration = 0;
  int width = 0;
  int containerHeight = 0;
  for (int i = 0; i < height.length; i++) {
    for (int j = i; j < height.length; j++) {
      if (i == j) {
        continue;
      }
      if (i > j) {
        width = i - j;
        if (height[i] > height[j]) {
          containerHeight = height[j];
        } else {
          containerHeight = height[i];
        }
      } else {
        width = j - i;
        if (height[i] > height[j]) {
          containerHeight = height[j];
        } else {
          containerHeight = height[i];
        }
      }
      waterInEachIteration = width * containerHeight;
      print('water in each iteration is $waterInEachIteration');
      print('and max water is : $maxWater');
      if (waterInEachIteration > maxWater) {
        print('switching');
        maxWater = waterInEachIteration;
      }
    }
  }
  return maxWater;
}

int maxAreaa(List<int> height) {
  int left = 0;
  int right = height.length - 1;
  int maxArea = 0;
  int heightOfSmallerItem = 0;

  while (left < right) {
    int width = right - left;
    if (height[right] > height[left]) {
      heightOfSmallerItem = height[left];
      left++;
    } else {
      heightOfSmallerItem = height[right];
      right--;
    }
    int area = width * heightOfSmallerItem;
    if (area > maxArea) {
      maxArea = area;
    }
  }

  return maxArea;
}
