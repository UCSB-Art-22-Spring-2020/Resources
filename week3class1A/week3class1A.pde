float xPos, yPos; // position variables for geometry
float xVel, yVel; // velocity variables for geometry
float xDirection, yDirection; // direction variables for geometry

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;

  xVel = 3; // velocity of xPos
  yVel = 1; // velocity of yPos
  xDirection = 1; // initial x direction
  yDirection = 1; // initial y direction
  background(200, 30, 30);
}


void draw() {
  background(200, 30, 30);
  ellipse(xPos, yPos, 20, 20);
  noStroke();
  
  
  //yVel = yVel * yDirection;
  //yPos+=yVel;
  //yVel+=1.2;

  xPos+=(xVel * xDirection); // move by x velocity in the current direction  ...same as xPos = xPos + xVel
  yPos+=(yVel * yDirection); // move by y velocity in the current direction  ...same as yPos = yPos + yVel
 

  if ( xPos > width || xPos < 0 ) { // check if we are at the edge of our screen
    xDirection = xDirection * -1; // change direction to the other sign (+ to - , or - to + )
  }

  if ( yPos > height || yPos < 0 ) { // check if we are at the edge of our screen
    yDirection = yDirection * -1; // change direction to the other sign (+ to - , or - to + )
  }

  if (keyPressed) { // have we pressed a key?
    if (key == 'x') { // is that key x?
      xVel = random(1, 10); // if so, set x velocity to random number between 1-9
      println("xVel = :",xVel);
    }
    if (key == 'y') { // is that key y?
      yVel = random(1, 10); // if so, set y velocity to random number between 1-9
      println("yVel = :",yVel);
    }
  }

  //println(xDirection);
}
