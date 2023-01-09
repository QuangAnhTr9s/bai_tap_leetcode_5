void main() {
  List<int> nums = [2, 1, 2, 5, 3, 2];
  print(repeatedNTimes(nums));
}

int repeatedNTimes(List<int> nums) {
  //đếm số lần xuất hiện, cái nào = nums.length/2 thì lấy
  for (var element in nums) {
    int count  = 0;
    for(int i = 0; i<nums.length; i++){
      if(nums[i] == element){
        count ++;
      }
    }
    if(count == nums.length/2){
      return element;}
  }
  return 0;

  /*/
  /tạo map chứa giá trị của nums và số lần xuất hiện
  Map<int, int> map = {};
  for (int i = 0; i < nums.length; i++) {
    //duyệt list nums,
    //nếu map chưa có key = giá trị trong list nums thì gán value = 1 (số lần xuất hiện),
    //nếu có rồi thì tăng value thêm 1
   if(!map.containsKey(nums[i])){
     map[nums[i]] = 1;
   }else{
     map[nums[i]] = map[nums[i]]! + 1;
   }
  }
  //tìm trong map value nào = nums.length/2 thì lấy
  int result = map.keys.firstWhere(
          (k) => map[k] == nums.length/2, orElse: () => 0);
  return result;
  */
}
