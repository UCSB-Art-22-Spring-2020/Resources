import peasy.*;
PeasyCam cam; // initialize camera

PShape iceBox;
PImage img;
PShape hand;

// create an arraylist to hold many particles
ArrayList<particle> plist = new ArrayList<particle>();


int boundary = 200;
int total = 100; // total number of particles that we want

float rotX, rotY, rotZ, camX, camY, camZ; // rotation and translation of our navigation 

int colorR = 255;
int colorB = 0;

void setup() {
  size(600, 600, P3D);

  img = loadImage("ice.jpg"); //load image to use as texture
  iceBox = createShape(BOX, 100);
  iceBox.setTexture(img); // wrap iceBox with img
  
  hand = loadShape("hand.obj");

  cam = new PeasyCam(this,600);

  // we want to add "total" number of particles to our plist
  for ( int i=0; i < total; i++) {
    plist.add( new particle(
    random(-boundary,boundary), // initial x location
    random(-boundary,boundary), // ...y
    random(-boundary,boundary), // ...z
    10, // size
    random(-2,2), // xspeed
    random(-2,2), // yspeed
    random(-2,2 ) ));  // zspeed
  }
  
}


void draw() {
  //background(198,111,91);
  background(0);
  
  colorR--; // decrease the amount of red
  if( colorR < 0 ){
   colorR = 255; // reset to 255 
  }
  colorB++; // increase amount of blue
  if( colorB > 255 ){
   colorB = 0; 
    
  }
  
  ambientLight(colorR,100,colorB);
  
  if(mousePressed){
   //ambient
   //ambientLight(255,0,0); // just needs color (r,g,b)
   
   //directional
   //directionalLight(0,255,0,   -1,1,0 ); // needs color and direction
   
   //spot
   //spotLight(0,0,255,   400,0,0,    -1,0,0,     radians(90),    75); // needs color, origin,  direction,  rotation,  size of spot
   
   //point
   //pointLight(255,0,0,    -200,0,0); // color and origin
   //pointLight(0,255,0,    -150,0,0);
    
  }
  
  scene(); // run the scene() function to draw our 3D scene!
  nav();
  
  for (particle p : plist) {  // for every particle in the plist, 
    p.display(); // run its update() function
  }
 
  
  
}
