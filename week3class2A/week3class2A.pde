float x0,y0,x1,y1; // position of first point
float stepSizeX, stepSizeY;

void setup(){
 size(600,600); 
 
 x0 = x1 = width/2;
 y0 = y1 = height/2;
 stepSizeX = 7;
 stepSizeY = 7;
 background(193,98,108);
}


void draw(){
  //background(193,98,108);
  
  // draw point 0
  strokeWeight(10); // size of point
  stroke(255,100); // color of point
  point(x0,y0); // draw point!
  
  x0 = x0 + random(-stepSizeX, stepSizeX); // add a random step to the x direcction
  y0 = y0 + random(-stepSizeY, stepSizeY); // add a random step to the y direction
  
  
  if(x0 > width || x0 < 0){ // reset location if we go off the screen
   x0 = random(0, width);     
  }
  if(y0 > height || y0 < 0){ // reset location if we go off the screen
   y0 = random(0, height);     
  }
  
  // draw point 1
  strokeWeight(10); // size of point
  stroke(0,100); // color of point
  point(x1,y1); // draw point!
  
  x1 = x1 + random(-stepSizeY, stepSizeY); // add a random step to the x direcction
  y1 = y1 + random(-stepSizeX, stepSizeX); // add a random step to the y direction
  
  
  if(x1 > width || x1 < 0){ // reset location if we go off the screen
   x1 = random(0, width);     
  }
  if(y1 > height || y1 < 0){ // reset location if we go off the screen
   y1 = random(0, height);     
  }
  
}
