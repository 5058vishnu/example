class Book {
  String? name;
  String? author;
  int? prize;

  display(){
    print("$name");
    print("$author");
    print("$prize");

  }

  Book(this.name, this.author, this.prize);
}
main(){
var book=Book("Neermadhalam", "Madhavi Kutty", 500);
book.display();
}