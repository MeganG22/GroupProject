import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import processing.sound.*;

void setup ()
{
 size(2000, 1800);
 h = new Head();
 m = new MusicButtons();
 s = new Shapes();
 minim = new Minim(this);
 ai = minim.getLineIn(Minim.MONO,width,44100,16);
 heartbeatLayer = new SoundFile(this, "heartbeatLayer.wav");
 guitarLayer = new SoundFile(this, "guitarLayer.wav");
 voiceLayer = new SoundFile(this, "voiceLayer.wav");
 harmonyLayer = new SoundFile(this, "harmonyLayer.wav");
 pianoLayer = new SoundFile(this, "pianoLayer.wav");
 highbeatLayer = new SoundFile(this, "highbeatLayer.wav");
}

Head h;
MusicButtons m;
Shapes s;
Minim minim;
AudioInput ai;
SoundFile wholeSong;
SoundFile heartbeatLayer;
SoundFile guitarLayer;
SoundFile voiceLayer;
SoundFile harmonyLayer;
SoundFile pianoLayer;
SoundFile highbeatLayer;

void draw ()
{
 background(0);
 stroke(255);
 h.render();
 m.render();
 s.render();
  
 h.update();
 m.update();
 s.update();
 
 m.GuitarButton();
 m.VoiceButton();
 m.HeartbeatButton();
 m.HarmonyButton();
 m.HighbeatButton();
 m.KeyboardButton();
 m.PlayButton();
 m.StopButton();
 
 //* Stage 1 = 100>20, Stage 2 = 100>40, Stage 3 = 100>60, Stage 4 = 100>80, Stage 5 = 100>99?
 float myHeight = 380;
  for(int i = 725 ; i < 1275; i ++)
  {
   stroke(165,222,228);
    line(i, myHeight, i, myHeight +(ai.left.get(i)* 100));
   if(ai.left.get(i)* 100 > 20)
   {
     
    /* write the code here to draw something 
    when the pithch is higher than certain number.*/
   }
  }
  
}