import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import processing.sound.*;

void setup ()
{
 colorMode(HSB);
 size(2000, 1800);
 h = new Head();
 m = new MusicButtons();
 minim = new Minim(this);
 ai = minim.getLineIn(Minim.MONO,width,44100,16);
 heartbeatLayer = minim.loadFile("heartbeatLayer.wav");
 guitarLayer = minim.loadFile("guitarLayer.wav");
 voiceLayer = minim.loadFile("voiceLayer.wav");
 harmonyLayer = minim.loadFile("harmonyLayer.wav");
 pianoLayer = minim.loadFile("pianoLayer.wav");
 highbeatLayer = minim.loadFile("highbeatLayer.wav");
}

Wolf x = new Wolf();
Head h;
MusicButtons m;
Minim minim;
AudioInput ai;
AudioPlayer wholeSong;
AudioPlayer heartbeatLayer;
AudioPlayer guitarLayer;
AudioPlayer voiceLayer;
AudioPlayer harmonyLayer;
AudioPlayer pianoLayer;
AudioPlayer highbeatLayer;
ArrayList<Wave> waves = new ArrayList<Wave>();
ArrayList<Circle> circles = new ArrayList<Circle>();

void draw ()
{
 background(0,0,0);
 h.render();
 m.render();
  
 h.update();
 m.update();
 m.guitarIsMuted = guitarLayer.isMuted();
 m.voiceIsMuted = voiceLayer.isMuted();
 m.heartbeatIsMuted = heartbeatLayer.isMuted();
 m.harmonyIsMuted = harmonyLayer.isMuted();
 m.highbeatIsMuted = highbeatLayer.isMuted();
 m.pianoIsMuted = pianoLayer.isMuted();
 
 float myHeight = 380;
  for(int i = 725 ; i < 1275; i ++)
  {
   stroke(i*255.0f/ai.bufferSize(),255,255);
   line(i, myHeight, i, myHeight +(ai.left.get(i)* 100));
   if(ai.left.get(i)* 100 >= 5 && ai.left.get(i)* 100 < 20)
   {
     if(frameCount % 60 == 0)
     {
      Wave wave = new Wave();
      waves.add(wave);
     }
   }
   if(ai.left.get(i)* 100 >= 20 && ai.left.get(i)* 100 <40)
   {
     if(frameCount % 60 ==0)
     {
       Circle circle = new Circle();
       circles.add(circle);
     }
   }
   if(ai.left.get(i)* 100 >= 40 && ai.left.get(i)* 100 <100)
   {
     x.render();
   }

  }
  
  for(Wave a : waves)
  {
    a.render();
    a.update();
  }
  
  for(Circle a : circles)
  {
    a.render();
    a.update();
  }
  
  
}

void mousePressed()
{
  if(dist(mouseX,mouseY,m.x-600,m.y-750)<100)//guitar
  {
    if(guitarLayer.isPlaying() && m.guitarIsMuted)
    {
      guitarLayer.unmute();
    }
    if(guitarLayer.isPlaying() && (!m.guitarIsMuted))
    {
      guitarLayer.mute();
    }
  }
  if(dist(mouseX,mouseY,m.x-750,m.y-450)<100)//voice
  {
    if(voiceLayer.isPlaying() && m.voiceIsMuted)
    {
      voiceLayer.unmute();
    }
    if(voiceLayer.isPlaying() && (!m.voiceIsMuted))
    {
      voiceLayer.mute();
    }
  }
  if(dist(mouseX,mouseY,m.x-600,m.y-150)<100)
  {
    if(heartbeatLayer.isPlaying() && m.heartbeatIsMuted)
    {
      heartbeatLayer.unmute();
    }
    if(heartbeatLayer.isPlaying() && (!m.heartbeatIsMuted))
    {
      heartbeatLayer.mute();
    }
  }
  if(dist(mouseX,mouseY,m.x+600,m.y-750)<100)
  {
    if(harmonyLayer.isPlaying() && m.harmonyIsMuted)
    {
      harmonyLayer.unmute();
    }
    if(harmonyLayer.isPlaying() && (!m.harmonyIsMuted))
    {
      harmonyLayer.mute();
    }   
  }
  if(dist(mouseX,mouseY,m.x+750,m.y-450)<100)
  {
    if(highbeatLayer.isPlaying() && m.highbeatIsMuted)
    {
      highbeatLayer.unmute();
    }
    if(highbeatLayer.isPlaying() && (!m.highbeatIsMuted))
    {
      highbeatLayer.mute();
    }   
  }
  if(dist(mouseX,mouseY,m.x+600,m.y-150)<100)//keyboard or piano?
  {
    if(pianoLayer.isPlaying() && m.pianoIsMuted)
    {
      pianoLayer.unmute();
    }
    if(pianoLayer.isPlaying() && (!m.pianoIsMuted))
    {
      pianoLayer.mute();
    }   
  }
  
}