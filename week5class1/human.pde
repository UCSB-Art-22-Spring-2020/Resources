class human{
  // necessary variables
  String name;
  int age;
  float coffee;
  
  float x,y;
  
  // constructor ... what will I need to say to create a specifc instance of the human class?
  human( String n, int a, float c ){
     name = n;
     age = a;
     coffee = c;   
  }
  
  // methods
  void display(){
     x = mouseX;
     y = mouseY;
     text(name + " " + age + " " + coffee, x, y);
  }

}
