void interaction() {
  if (keyPressed) { // have we pressed a key?
    if (key == 'x') { // is that key x?
      xVel = random(1, 10); // if so, set x velocity to random number between 1-9
      println("xVel = :", xVel);
    }
    if (key == 'y') { // is that key y?
      yVel = random(1, 10); // if so, set y velocity to random number between 1-9
      println("yVel = :", yVel);
    }
  }
}
