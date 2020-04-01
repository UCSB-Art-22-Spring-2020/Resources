// In class code - week 1 class 1
// Art22 Spring 2020
// Author: Mark Hirsch


// ingredients
int number; // create a integer variable name "number"

// setup the ingredients
void setup(){
 size(600,600); // create a window  
 number = 4; // set number to 4
 
}


// COOK! - do actions with the ingredients
void draw(){
  background(255,255,255); // change background color to white
  rect(number,200,200,20,20); // draw a rectangle (x,y,width,height)
  
  number = number + 1; // increase number by 1
  //println(number); // print number
}
