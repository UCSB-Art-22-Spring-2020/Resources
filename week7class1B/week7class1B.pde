import peasy.*;

PeasyCam cam; // initialize camera

// create an arraylist to hold many particles
ArrayList<particle> plist = new ArrayList<particle>();


int boundary = 200;
int total = 100; // total number of particles that we want

float rotX, rotY, rotZ, camX, camY, camZ; // rotation and translation of our navigation 

void setup() {
  size(600, 600, P3D);

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
  background(198,111,91);
  
  scene(); // run the scene() function to draw our 3D scene!
  nav();
  
  for (particle p : plist) {  // for every particle in the plist, 
    p.display(); // run its update() function
  }
 
  
  
}
