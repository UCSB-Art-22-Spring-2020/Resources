class particle {

  // variables
  float x, y, z;
  float size;
  float speedX, speedY, speedZ;

  // constructor
  particle( float x_, float y_, float z_, float size_, float speedX_, float speedY_, float speedZ_ ) {
    x= x_;
    y= y_;
    z= z_;
    size = size_;
    speedX = speedX_;
    speedY = speedY_;
    speedZ = speedZ_;
  }

  // methods
  void display() {
    
    pushMatrix();
    translate(x,y,z);
    scale(20);
    shape(hand,0,0);
    popMatrix();
    
    //strokeWeight( size );
    //stroke(0); // lifeSpan is the alpha channel
    //point(x, y, z);
    //x = x + speedX;
    //y = y + speedY;
    //z = z + speedZ;

    // check for boundaries and respawn in a random location (inside the box)
    if( x > boundary || x < -boundary || y > boundary || y < -boundary || z > boundary || z < -boundary ){
      x = random(-boundary,boundary);
      y = random(-boundary,boundary);
      z = random(-boundary,boundary);
    }
    
    
  }
}
