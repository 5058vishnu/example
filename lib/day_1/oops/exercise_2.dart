
class Circle{
  double? radius;

  Circle(this.radius);

  calculateArea(){
   var area = 3.14 * radius! * radius!;
   print("$area");
  }
}main(){
  var c1=Circle(5);
  c1.calculateArea();
}