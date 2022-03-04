class Book{
  Book(int n, String input){
    this.page = n;
    this.title = input;
  }
  bool over250(){
    return this.page>250;
  }
  String title;
  int page;
}

void main(){
  Book hp = Book(78, "harrypotter");
  Book lk = Book (134, "lord King");
  print(hp.page);
  print(lk.page);
  print(hp.over250());
  print(lk.over250());
}