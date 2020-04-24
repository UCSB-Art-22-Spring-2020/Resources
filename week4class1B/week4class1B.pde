PImage[] frames = new PImage[75]; // new PImage array with 75 elements
int frameNum = 0;

void setup(){
  size(320,480);
    
  for(int i=0; i < frames.length; i++){
     frames[i] = loadImage("frame_" + i + ".jpg"); // load all images into the PImage array called "frames"
  }
  
  //image(frames[13],0,0);
  
}


void draw(){
  image(frames[frameNum], 0,0); //draw the current image
  
  if( frameCount % 10 == 0 ){ // if 10 frames have gone by (aka do something every 10 frames)
  
    frameNum++; // increase frameNum by one
    
    if(frameNum >= 75){ // if we've reached the end of the array
      frameNum = 0; // reset frameNum back to the beginning of the array
    }
    
  }
  
}
