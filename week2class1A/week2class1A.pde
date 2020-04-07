PImage img;
PShape s;
float r; // our random number
int intR; // integer version of random number

void setup(){
 size(1500,938); 
 // load images and shapes
 img = loadImage("desert.jpg");
 s = loadShape("ghost.svg");
 
 r = random(0,10);
 intR = int(r);
 println("random float: ",r, ", random int: ", intR);
 
 
  
}


void draw(){
  image(img, 0, 0); // draw image at full scale
  
  noCursor(); // hide mouse
  shape(s, mouseX, mouseY, s.width/4, s.height/4); // draw shape at mouse (1/4 scale)
  
}
