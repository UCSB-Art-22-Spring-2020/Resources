float xPos, yPos; // position variables for geometry
float xVel, yVel; // velocity variables for geometry
float xDirection, yDirection; // direction variables for geometry
float xGravity, yGravity; // acceleration variables

void setup() {
  size(600, 600);
  init();
}


void draw() {
  render(); // run the "render" function
  
  update(); // run/call the "update" function

  boundaries(); // ...
  
 interaction(); // ...

}
