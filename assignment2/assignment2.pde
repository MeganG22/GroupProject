import ddf.minim.*;

void setup ()
{
 size(2000, 1800);
 colorMode(HSB);
 h = new Head();
 m = new MusicButtons();
 minim = new Minim(this);
 ai = minim.getLineIn(Minim.MONO,width,44100,16);
 colorMode(HSB);
}

Head h;
MusicButtons m;
Minim minim;
AudioInput ai;
float y;
float mult = 255.0f/ai.bufferSize();
float myHeight = 400;

void draw ()
{
 background(0);
 stroke(255);
  for(int i = 720 ; i < 1270 ; i ++)
 {
   stroke(i * mult, 255, 255);
   line(i, myHeight, i, myHeight+ai.left.get(i)*80);
 }
 h.render();
 m.render();
  
 h.update();
 m.update();
 
 

  
}