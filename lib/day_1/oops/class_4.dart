class Camera{
  String? name;
  String? color;
  int? megapixel;

  Camera(this.name, this.color, this.megapixel);

  display(){
    // print("Name is $name");
    // print("color : $color");
    // print("megapixel : $megapixel");
    print("Name is $name , color : $color , megapixel : $megapixel");
  }
}
main(){
  Camera cam1=Camera("canon", "black", 1300);
  Camera cam2=Camera("nikon", "red", 1500);
  cam1.display();
  cam2.display();
}