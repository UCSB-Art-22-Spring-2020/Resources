void init() {
  xPos = width/2;
  yPos = height/2;

  xVel = 3; // velocity of xPos
  yVel = 1; // velocity of yPos
  xDirection = 1; // initial x direction
  yDirection = 1; // initial y direction
  xGravity = 0.5; // initial x acceleration
  yGravity = 0; // initial y acceleration
  background(200, 30, 30);
}
