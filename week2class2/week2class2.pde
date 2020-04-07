int x, y; //variables for position
int h,s,b; // color variabls

void setup() {
  size(800, 400);
  // starting position in the middle
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);
  colorMode(HSB); // use hue sat bright color mode

  h = 200; // hue
  s = 360; // saturation
  b = 360; // brightness

  noStroke();
  fill(x,s,b);
  ellipse(x, y, 20, 20);

  if (keyPressed) { // is a key pressed?
    if (key == CODED) { // is it a special "CODED" key?
      if (keyCode == RIGHT) { // is the coded key the right arrow?
        x+=10;   // same as saying x = x + 10;
      }
      if (keyCode == LEFT) { // is the coded key the left arrow?
        x-=10;   // same as saying x = x - 10;
      }
    }
  }

  if (x > width) { // if x goes out of bounds on the right
    x = 0; // reset to the left
  }
  if (x < 0) { // if x goes out of bounds on the left
    x = width; // reset to the right
  }
}
