
void main() {
  int N = 8;
  var myList = [];
  var a = [];
  for (int i = 0; i<N+1; i++) {
    for (int j =0; j<i; j++) {
      a = [i];
      myList.addAll(a);
    }
  }
  print(myList);
}