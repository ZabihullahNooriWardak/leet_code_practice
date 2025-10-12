void main() {}

double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  var arr = [...nums1, ...nums2];
  arr.sort();
  if (arr.length % 2 == 0) {
    var second = arr.length ~/ 2;
    var median = (arr[second] + arr[second - 1]) / 2;
    return median;
  } else {
    var middle = (arr.length / 2).floor();
    return arr[middle] + 0.0;
  }
}
