import ddf.minim.*;
import ddf.minim.analysis.*;

// initialize the library, song, and beat detector
Minim minim;
AudioPlayer song;
BeatDetect beat;
FFT fft;

// rotation of rectangle
float r = 0;
// size of rectangle
float w = 100;
// hue, saturation and brightness
float h, s, b;
float lastBeat;

void setup()
{

  size(600, 600, P3D);
  colorMode(HSB);


  // load library and song
  minim = new Minim(this);
  song = minim.loadFile("denmark.mp3", 2048);

  // play and loop the audio file
  song.loop();

  // create a beat detection object and set the sensitivity 
  beat = new BeatDetect();
  beat.setSensitivity(250); 

  // create a new FFT object and match the settings to the audio file
  fft = new FFT( song.bufferSize(), song.sampleRate() );

  background(0);
}

void draw(){
  if( millis() < 10700 ) background(random(100,135));      

  if ( millis() > 10700) {
    // do the fft analysis of the song
    fft.forward( song.mix );
    h = map(fft.getBand(10), 0, 100, 0, 360);
    s = 100;
    b = 100;

    // look for when a beat happens
    beat.detect(song.mix);  

    // if there is a beat onset (the "attack" of a beat)
    if ( beat.isOnset() ) {
      lastBeat = millis();
      
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(r));
      rectMode(CENTER);
      noFill();
      stroke(h, s, b, 100);
      strokeWeight(4);
      rect(0, 0, w, w);    
      popMatrix();
      
      r+=5;
      if (r % 90 == 0) {
        w+= 100;
      }
    }
    
    if(millis() - lastBeat > 1500){ 
       background(random(100,135));
       w = 100;
       r = 0;
    }
  }
}
