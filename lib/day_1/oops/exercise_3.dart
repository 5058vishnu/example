class Book {
  String? title;
  String? author;
  int? numberOfPages;
  bool? isAvailable;


  borrowBook(){
    isAvailable=false;
    print("the book has been borrowed");
  }
  returnBook(){
    isAvailable=true;
    print("the book has been returned");
  }
}
main(){
  var b1=Book();
  b1.borrowBook();
}