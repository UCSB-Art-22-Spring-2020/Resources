void boundaries() {

  if ( xPos > width || xPos < 0 ) { // check if we are at the edge of our screen
    xDirection = xDirection * -1; // change direction to the other sign (+ to - , or - to + )
  }

  if ( yPos > height || yPos < 0 ) { // check if we are at the edge of our screen
    yDirection = yDirection * -1; // change direction to the other sign (+ to - , or - to + )
  }
}
