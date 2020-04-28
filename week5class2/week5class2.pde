//particle p; // initialize a particle named p
//particle q;

// create an arraylist to hold many particles
ArrayList<particle> plist = new ArrayList<particle>();
ArrayList<walker> wlist = new ArrayList<walker>();

int total = 100; // total number of particles that we want

void setup() {
  size(600, 600);

  //p = new particle(width/2, height/2, 10, 2, 1);
  //q = new particle(random(0,width),random(0,height), 10, -2, -1);

  // we want to add "total" number of particles to our plist
  //for ( int i=0; i < total; i++) {
  //  plist.add( new particle(width/2, height/2, 10, random(-2,2), random(-2,2) ) );  // add new particles with a random speedX and speedY value
  //}
  
}


void draw() {
  background(198,111,91);


  for (particle p : plist) {  // for every particle in the plist, 
    p.display(); // run its update() function
  }
  
  for (walker w : wlist){
    w.display(); 
  }
  
  // particle emitter
  if(mousePressed){
    plist.add( new particle(mouseX, mouseY, 10, random(-2,2), random(-2,2) ) );  // add new particles with a random speedX and speedY value 
    wlist.add( new walker(mouseX, mouseY, 10) );
  }
  
  
}
