

void setup() {
  size(600, 600);

  loadPixels(); // initiate the pixel array

  //1 change one pixel to red
  //pixels[9] = color(255,0,0); // change the color of the 10th pixel to be red

  //2 change all pixels to red
  //for(int i=0; i < pixels.length; i++){ // try changing the increment amount of i (such as i+=15)
  //   pixels[i] = color(255,0,0);
  //}

  //3 change center pixel to red
  // x + y * width ...mAgIc FoRmUlA
  //int x = width/2; // middle along x-axis
  //int y = height/2; // middle along y-axis
  //int index = x + y * width;
  //pixels[index] = color(255,0,0);

  //4 change all pixels using x and y with a nested loop
  //for(int x = 0; x < width/2; x++){
  //  for(int y = 0; y < height/2; y++){
  //    int index = x + y * width;
  //    pixels[index] = color(255,0,0);
  //  }
  //}

  //updatePixels();
}

void draw() {
  loadPixels();
  for (int x = 0; x < width; x++) { // nested loop to go through all pixel locations
    for (int y = 0; y < height; y++) {
      int index = x + y * width; //converting to index number (for the array)
      
      float d = dist(x, y, mouseX, mouseY); // get distance between pixel's loaction (x and y) and the mouse position
      float mD = map(d, 0, 300, 0, 255); // map pixel distance to range that works with color
      
      pixels[index] = color(mD); // setting color of the specific pixel at index
    }
  }


  updatePixels();
}
