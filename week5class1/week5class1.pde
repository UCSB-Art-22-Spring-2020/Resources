human Mark; // initialize a class of human named Mark
human Paul;

particle p; // initialize a particle named p
particle q;

void setup(){
  size(600,600);
  
  Mark = new human("Mark", 31, 1.5); // use constructor to set information about this particular human
  Paul = new human("Paul", 15, 0); 
  
  p = new particle(width/2, height/2, 10, 2, 1);
  q = new particle(random(0,width),random(0,height), 10, -2, -1);
  
}


void draw(){
  background(0);
  //Mark.display(); // display Mark's information
  //Paul.display();
  
  p.display();
  q.display();
  
}


void mouseReleased(){
  Mark.age++; // increase Mark's age  :(  every mouse click
  Paul.coffee+=5; // increase Paul's coffee consumption by a lot
  
  q.size+=5;
  
}
