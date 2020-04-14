float x,y; //position
float noisePosX, noisePosY; // position of noise value

void setup(){
  size(600,600);
  //frameRate(1); // you can slow your framerate to help see things more slowly 
  x = width/2;
  y = height/2;
  
  noisePosX = 0; // initial position for noise values
  noisePosY = 100;
  background(193,98,108);
}


void draw(){
  //background(193,98,108);
  strokeWeight(10);
  stroke(255);
  point(x,y);
  
  float m = noise(noisePosX); // get a noise value for x position
  float n = noise(noisePosY); // get noise value for y
  
  x = map(m, 0, 1, 0, width); // map the value "m" from its old range (0-1) to a new range (0-width)
  y = map(n, 0, 1, 0, height); // map the value "n" from its old range (0-1) to a new range (0-height)
  
  
  noisePosX = noisePosX + 0.001; // increase noise position ...the smaller the increase, the smooth the results
  noisePosY = noisePosY + 0.001;

  
}
