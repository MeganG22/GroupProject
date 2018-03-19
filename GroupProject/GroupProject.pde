void setup ()
{
  size(2000, 1800);
  colorMode(HSB);
  h = new Head();
}

Head h;

void draw ()
{
  background(0);
  stroke(255);
  h.render();
  
  
  h.update();
  
}