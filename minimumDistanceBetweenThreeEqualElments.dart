void main(){

var test = [1,1,2,3,2,1,2];

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

    if(minimumDistances.isEmpty){
      return -1;
    }
    
    return minimumDistances[0];
  }


  int minimumDistanceSum(List<int>arr){
  
   List<int> sums=[];

    for(int i =0;i<arr.length-2;i++){
      int first = arr[i]-arr[i+1];

      if(first<0){
        first = first*-1;
      }

      int second = arr[i]-arr[i+2];

      if(second <0){
       second = second*-1;
      }

      int third = arr[i+1]-arr[i+2];

      if(third<0){
       third=  third*-1;
      }
 

   int distance = first+second+third;

        sums.add(distance);
    }
   
   sums.sort();

    return sums[0];
  }