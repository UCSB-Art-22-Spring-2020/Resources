import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
// FFT (fast fourier transform)
FFT fft; // ...get us info on the "parts" (frequencies) of our sound

float c;

void setup(){
 size(500,200);
 colorMode(HSB);
 
 minim = new Minim(this);
 song = minim.loadFile("blake.mp3", 1024);
 song.loop();
 
 // get info about the song
 fft = new FFT( song.bufferSize(), song.sampleRate() );
  
}

void draw(){
 background(255);
 
 // use fft to "listen" to our song and get info about the different frequencies (~pitches (high/low/middle/etc))
 fft.forward( song.mix );
 //println( fft.getBand( 0 ) ); //print info on the lowest frequency (sound)
 //println( fft.getBand( 1000 ) ); //print info on a very high frequency (sound)
 
 // loop through all frequencies in the fft and draw lines for each "Band"
 //for( int i=0; i < fft.specSize(); i++ ){
 //  stroke(0);
 //  strokeWeight(10);
 //  line(i, height, i,  height - fft.getBand(i)*4 );   
 //}
 
 //strokeWeight(10);
 //stroke(0);
 //line(150, height, 150, height - fft.getBand(150)*4);
 //println(fft.getBand(150));
 
 //fft.getBand(150) is a good indicator of the snare drum and the values range roughly between 0-15
 c = map(fft.getBand(150), 0, 15, 0, 360);  //map fft.getBand(150) from sound range to color range
 fill(c, 200, 200);
 noStroke();
 ellipse(width/2, height/2, 50, 50);
  
}
