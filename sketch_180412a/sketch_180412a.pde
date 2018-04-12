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
 minim = new Minim(this);
 ai = minim.getLineIn(Minim.MONO,width,44100,16);
 wholeSong = new SoundFile(this, "allLayers.wav");
}

Head h;
MusicButtons m;
Minim minim;
AudioInput ai;
SoundFile wholeSong;


void draw ()
{
 background(0);
 stroke(255);
 
 h.render();
 m.render();
  
 h.update();
 m.update();
 
 m.GuitarButton();
 m.VoiceButton();
 m.HeartbeatButton();
 m.HarmonyButton();
 m.HighbeatButton();
 m.KeyboardButton();
 m.PlayButton();
 m.StopButton();
 
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