void main(){

}

 String longestCommonPrefix(List<String> strs) {
   final smallestString = smallestLength(strs);
   var result ="";
   for(var i =0;i<smallestString.length;i++){
     var outerCharacter = smallestString[i];
     for(var j =0;j<strs.length;j++){
        if(strs[j][i]!=outerCharacter){
            return result ;
        }
        if(strs[j][i]==outerCharacter && j==strs.length-1){
            result+=strs[j][i];
        }
     }
   }
    return result;
  }
  
    String smallestLength(List<String> strs){
        String small = strs[0];
        for(int i =0;i<strs.length;i++){
          if(strs[i].length<small.length){
            small = strs[i];
          }
        }
        return small;
    }