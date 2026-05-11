void main() {}
 List<List<int>> fourSum(List<int> nums, int target) {
    nums.sort();
 List<List<int>> result = [];
    for(int i=0;i<nums.length-3;i++){
        if(i!=0 && nums[i]==nums[i-1])continue;
      for(int j =i+1;j<nums.length-2;j++){
        if (j > i + 1 && nums[j] == nums[j - 1]) continue;
      
      int left = j+1;

      int right = nums.length-1;

      while(left<right){
  
int sum = nums[i]+nums[j]+nums[right]+nums[left];
if(sum>target){
    right--;
}else
if(sum<target){
    left++;
}else
if(sum==target){
    List <int> temp = [nums[i],nums[j],nums[right],nums[left]];
    result.add(temp);
    right--;
    left++;
    while(left<right&& nums[right]==nums[right+1]){
right--;
    }
    while(left<right && nums[left]==nums[left-1]){
        left++;
    }
}

  

      }


      }


    }
    return result;
  }