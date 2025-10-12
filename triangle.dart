void main() {
  var triangle = [
    [2],
    [3, 4],
    [6, 5, 7],
    [4, 1, 8, 3]
  ];
  var second = [
    [-10]
  ];
  print(minimumTotal(triangle));
  print(minimumTotal(second));
  print(
    minimumTotal(
      [
        [-1],
        [2, 3],
        [1, -1, -3]
      ],
    ),
  );
}

// class Solution {
// int minimumTotal(List<List<int>> triangle) {
//   int total = 0;
//   int currentIndex = 0;
//   for (int i = 0; i < triangle.length; i++) {
//     if (i == 0) {
//       total += triangle[i][i];
//       continue;
//     }
//     if (triangle[i][currentIndex] > triangle[i][currentIndex + 1]) {
//       total += triangle[i][currentIndex + 1];
//       currentIndex += currentIndex + 1;
//     } else {
//       total += triangle[i][currentIndex];
//     }
//   }
//   return total;
// }
// }

int minimumTotal(List<List<int>> triangle) {
  if (triangle.length == 1) {
    return triangle[0][0];
  }
  for (int i = 1; i < triangle.length; i++) {
    var previousArr = triangle[i - 1];
    var nextArr = triangle[i];
    for (int j = 0; j < nextArr.length; j++) {
      if (j == 0) {
        nextArr[j] += previousArr[0];
      } else if (j == nextArr.length - 1) {
        nextArr[j] += previousArr[previousArr.length - 1];
      } else {
        var first = nextArr[j] + previousArr[j];
        var second = nextArr[j] + previousArr[j - 1];
        if (first > second) {
          nextArr[j] = second;
        } else {
          nextArr[j] = first;
        }
      }
    }
  }

  var lastIndexOfTriangle = triangle[triangle.length - 1];
  var minimum = lastIndexOfTriangle[0];
  for (int i = 0; i < lastIndexOfTriangle.length; i++) {
    if (lastIndexOfTriangle[i] < minimum) {
      minimum = lastIndexOfTriangle[i];
    }
  }
  return minimum;
}
