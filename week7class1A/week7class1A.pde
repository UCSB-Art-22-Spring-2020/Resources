import peasy.*;

PeasyCam cam; // initialize our camera object

float x,y,z; // coordinates for a box

void setup(){
  size(600,600,P3D);
  
  cam = new PeasyCam(this, 600);
  
}


void draw(){
  background(255);
  
  //translate(width/2, height/2, 0); // move origin from top left corner to the middle of the window "global translation"
  
  //rotateX( radians(45) ); // rotate along x-axis by 45 degrees
  //rotateY( radians(45) ); //...y-axis
  //rotateZ( radians(45) ); //...z-axis
  
  // autonomous rotation based on the increasing frameCount
  //rotateX( frameCount * .01 );
  //rotateY( frameCount * .01 );
  //rotateZ( frameCount * .01 );
  
  // interactive rotation (based on mouse)
  float rotX = map(mouseX, 0, width, 0, TWO_PI); // map mouse from 0-width to 0-360 degress (aka TWO_PI)
  float rotY = map(mouseY, 0, height, 0, TWO_PI); //...same for y
  //rotateX(rotX);
  //rotateY(rotY);
  
  
  stroke(0);
  fill(175);
  
  //rectMode(CENTER);
  //rect(0,0,200,150);
  
  // 3d primitives
  noFill();
  box(100);
  sphere(150);
  
  pushMatrix();
  translate(x,y,z);
  fill(0);
  box(20);
  popMatrix();
  z++;  
  
}
