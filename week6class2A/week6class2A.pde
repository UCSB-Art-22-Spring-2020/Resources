// imports from Minim library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// initialize library
Minim minim;
// audio file
AudioPlayer song;
// beat detector
BeatDetect beat;

// radius of ellipse
float r = 80;

void setup(){
  size(500,200);
  colorMode(HSB);
  
  // setup our sound library
  minim = new Minim(this);
  
  // load song file and loop it
  song = minim.loadFile("denmark.mp3", 1024);
  song.loop();
  
  // setup beat detector and set sensitivity
  beat = new BeatDetect();
  beat.setSensitivity(250);
}

void draw(){
  background(240);
  
  // listen to the song and detect beats
  beat.detect(song.mix);
  
  // conditional to check if there is a beat detected
  if( beat.isOnset() ){
    r = 80; // set radius of ellipse back to 80
  }
  // color for ellipse in HSB
  noStroke();
  fill(255,182,147);
  ellipse(width/2, height/2, r, r);
  r *= 0.95;  // r = r * 0.95  ...slowly decrease (fade) radius of ellipse
  
}
