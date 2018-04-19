class Shapes
{
  float x, y;
  float waveLength;
  float waveHeight;
  float waveHalf;
  float lightningHeight;
  float lightningLength;
  float circleSize;
  float spikeLength;
  color c = color(random(0,255), random(0,255), random(0,255));

Shapes()
{
  x = width/2;
  y = height/2; 
  waveLength = 120;
  waveHeight = 100;
  waveHalf = 60;
  lightningHeight = 60;
  lightningLength = 40;
  circleSize = 10;
  spikeLength = 400;
}

void drawWave() //Stage 1 Peak
{
  stroke(255);
  arc(x-waveLength, y, waveHalf, waveHeight-50, PI, TWO_PI);
  arc(x-60, y, waveHalf, waveHeight-40, -TWO_PI, -PI);
  arc(x, y, waveHalf, waveHeight, PI, TWO_PI);
  arc(x+60, y, waveHalf, waveHeight, -TWO_PI, -PI);
  arc(x+waveLength, y, waveHalf, waveHeight-40, PI, TWO_PI);
  arc(x+waveLength+60, y, waveHalf, waveHeight-50, -TWO_PI, -PI);
}

void drawLightning() //Stage 2 Peak
{
  stroke(255);
  line(x, y, x+lightningLength, y+lightningHeight);
  line(x+lightningLength, y+lightningHeight, x+lightningLength*2, y+lightningHeight-40);
}

void drawCircle() //Stage 3 Peak
{
  ellipse( x, y, circleSize, circleSize); 
}

void drawSpikes() //Stage 4 Peak
{
  triangle( x, y, x+spikeLength, y-20, x+spikeLength, y +20); 
}

void drawWolf() //Stage 5 Peak
{
  
}

void render ()
{
  pushMatrix();
  
  fill(c,c,c);
  drawWave();
  drawLightning();
  drawCircle();
  drawSpikes();
  drawWolf();
  
  popMatrix();
  
}

 void update()
 {
 
 }
}
  