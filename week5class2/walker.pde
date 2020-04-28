class walker {

  // variables
  float x, y;
  float size;
  int lifeSpan = 255;

  // constructor
  walker( float x_, float y_, float size_) {
    x= x_;
    y= y_;
    size = size_;

  }

  // methods
  void display() {
    strokeWeight( size );
    stroke(255,lifeSpan); // lifeSpan is the alpha channel
    point(x, y);
    lifeSpan--;
    x = x + random(-3,3);
    y = y + random(-3,3);

  }
}
