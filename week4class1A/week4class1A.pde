int[] numbers = new int[5]; // new array with 5 elements of type "int"
String[] letters = new String[10]; // new array with 10 elements of type "String"

void setup(){
  size(600,600);
  
  numbers[0] = 13; // set first element in array (which is index 0) to 13
  numbers[3] = 22; // set the fourth element (index 3) to be 22
  
  //println("index 0 is : ", numbers[0]);
  //println("index 3 is : ", numbers[3]);
  
  for(int i=0; i < numbers.length; i++){
      numbers[i] = int(random(100,200));
      println(i);
  }
  
  printArray(numbers); // print the entire array
  
  letters[4] = "s";
  printArray(letters);
  
}


void draw(){
  
  
}
