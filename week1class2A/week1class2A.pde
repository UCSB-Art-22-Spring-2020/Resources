int x, y; // four integer variables
int w, h; 


void setup(){
  size(600,600);
  
  // set x and y to middle of the screen
  x = width/2; 
  y = height/2;
  
  w = 40;
  h = 40;
  
}

void draw(){
  //background(255); // white background
  
  strokeWeight(4); // 4 pixel thick for stroke
  stroke(239,129,21,140); // red outline with some transparency (alpha channel)
  fill(0); // fill black
  ellipse(x, y, w, h); // draw ellipse
  
  strokeWeight(60); // thickness of point (radius)
  stroke(20,40,60,100); // outline color
  point(mouseX,mouseY); // set location of the point to mouse
  //println(mouseX,mouseY);
  
}
