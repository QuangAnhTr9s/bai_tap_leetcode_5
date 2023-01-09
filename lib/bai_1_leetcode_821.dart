void main() {
  String s = "loveleetcode", c = "e";
  print(shortestToChar(s, c));
}

List<int> shortestToChar(String s, String c) {
  //tạo một String a là s lộn ngược
  String a = s.split('').reversed.join();
  //tạo list khoảng cách duyệt từ trái qua phải
  List<int> listResult = createDistanceList(s, c);
  //tạo list khoảng cách duyệt từ phải qua trái
  List<int> listResultReversed = createDistanceList(a, c).reversed.toList();
  //so sánh giá trị khoảng cách nào nhỏ hơn thì update cho listResult
  for (int i = 0; i < listResult.length; i++) {
    if (listResult[i] > listResultReversed[i]) {
      listResult[i] = listResultReversed[i];
    }
  }
  return listResult;
}

List<int> createDistanceList(String s, String c) {
  //từ một String s và c
  //=> tạo một list khoảng cách các phần tử của s với c
  //được duyệt từ trái sang phải
  List<String> list = s.split('');
  List<int> listResult = [];
  int index = list.indexOf(c);
  for (int i = 0; i < s.length; i++) {
    if (s[i] == c) {
      listResult.add(0);
      index = i;
    } else {
      listResult.add((i - index).abs());
    }
  }
  return listResult;
}
