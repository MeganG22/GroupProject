void setup ()
{
 size(2000, 1800);
 colorMode(HSB);
 h = new Head();
 m = new MusicButtons();
}

Head h;
MusicButtons m;

void draw ()
{
 background(0);
 stroke(255);
 h.render();
 m.render();
  
 h.update();
 m.update();
  
}