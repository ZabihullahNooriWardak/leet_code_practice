void main(){

var test = [1,2,1,1,3];

  print(minimumDistance(test));

}



  int minimumDistance(List<int> nums) {
    
    Map<int,List<int>> occurenceCache = {};

    for(int i =0;i<nums.length;i++){
        if(!occurenceCache.keys.contains(nums[i])){
            occurenceCache[nums[i]]=[i];
        }else{
          occurenceCache[nums[i]]!.add(i);
        }
    }

  List<int> minimumDistances = [];

  List values = occurenceCache.values.toList();

   for(int i =0;i<values.length;i++){
      
    if(values[i].length>2){
       final response =  minimumDistanceSum(values[i]);
       minimumDistances.add(response);
    }

   }

   minimumDistances.sort();

    return minimumDistances[0];
  }


  int minimumDistanceSum(List<int>arr){
  
   List<int> sums=[];

    for(int i =0;i<arr.length-2;i++){
        int distance = (( arr[i]-arr[i+1]).abs()+(arr[i]-arr[i+2]).abs()+arr[i+1]-arr[i+2].abs());
        print(distance);
        sums.add(distance);
    }
   
   sums.sort();

    return sums[0];
  }