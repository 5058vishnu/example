class Product{
  String? productName;
  double? price;
  int? quantityInStock;

  Product(this.quantityInStock);

  sell(int quantity){
    quantityInStock=quantityInStock!-quantity;
    print("the product has been sold, balance stock : $quantityInStock");
  }
}
main(){
  var p1=Product(100);
  p1.sell(12);
}