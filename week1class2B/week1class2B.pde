


void setup() {
  size(600, 600);
}


void draw() {
  //background(255);

  //if ( mouseX < width/2 && mouseY < height/2 ) {  // are we in the top left quadrant?
  //  stroke(0, 0, 255);
  //} else if ( mouseX > width/2 && mouseY < height/2 ) { // are we in the top right quad?
  //  stroke(0, 255, 0);
  //} else if ( mouseX > width/2 && mouseY > height/2 ) { // are we in the bottom right quad?
  //  stroke(255, 0, 0);
  //} else if ( mouseX < width/2 && mouseY > height/2 ) { // are we in the bottom right quad?
  //  stroke(0, 0, 0);
  //}

  if ( mouseX < 200 || mouseX > 400 ){
    stroke(255,0,0, 40); 
  } else{
    stroke(255,255,255, 40); 
  }


  strokeWeight(60);
  point(mouseX, mouseY);
}
