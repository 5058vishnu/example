class Car{
  String? brand;
  String? model;
  int? year;
  bool? isRunning;


  startEngine(){
    isRunning=true;
    print("the engine is now running");
  }
  stopeEngine(){
    isRunning=false;
    print("the engine has stoped");
  }
}
main(){
  var e1=Car();
  e1.startEngine();
}