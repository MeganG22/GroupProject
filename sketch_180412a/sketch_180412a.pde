import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup ()
{
 size(2000, 1800);
 colorMode(HSB);
 h = new Head();
 m = new MusicButtons();
 minim = new Minim(this);
 ai = minim.getLineIn(Minim.MONO,width,44100,16);
 //fft = new FFT(width, 44100);
 colorMode(HSB);
}

Head h;
MusicButtons m;
Minim minim;
AudioInput ai;
//FFT fft;
//float mult = 255.0f/ai.bufferSize();

void draw ()
{
 background(0);
 stroke(255);
 
 
 h.render();
 m.render();
  
 h.update();
 m.update();
 
 float myHeight = 380;
 for(int i = 725 ; i < 1275; i ++)
 {
   stroke(map(i, 0, ai.bufferSize(), 0, 255),255,255);
   line(i, myHeight, i, myHeight +(ai.left.get(i)* 100));
 }
  
}