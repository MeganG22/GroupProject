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
  float wolfEye;
  float wolfWidth;
  color c = color(random(0,255), random(0,255), random(0,255));
  
 //* can you make shapes invisable until they are transated when peak hits?
 //* can you make shapes disapear after a few seconds?
 //* can you fix the c (color) which is currently not working?
 
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
  spikeLength = 300;
  wolfEye = 10;
  wolfWidth = 50;
}

//*translate wave to centre of head and move outwards at random position when peak hit
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

//*translate lightning to centre of head and move outwards at random position when peak hit
void drawLightning() //Stage 2 Peak
{
  stroke(255);
  line(x, y, x+lightningLength, y+lightningHeight);
  line(x+lightningLength, y+lightningHeight, x+lightningLength*2, y+lightningHeight-40);
  line(x+lightningLength*2, y+lightningHeight-40, x+lightningLength*3, y+lightningHeight);
  line(x+lightningLength*3, y+lightningHeight, x+lightningLength*4, y+lightningHeight-30);
  line( x+lightningLength*4, y+lightningHeight-30, x+lightningLength*5, y+lightningHeight+10);
}

//*translate circle to centre of head and expand radius bigger till out of screen when peak hit
void drawCircle() //Stage 3 Peak
{
  ellipse( x, y, circleSize, circleSize); 
}

//*translate spike to centre of head and move outwards at random position when peak hit
void drawSpikes() //Stage 4 Peak
{
  triangle( x, y, x+spikeLength, y-20, x+spikeLength, y +20); 
}

//*translate wolf to centre of head and move outwards at random position when peak hit
void drawWolf() //Stage 5 Peak
{
  fill(c, c, c);
  ellipse(x-10, y, wolfEye, wolfEye-3);
  ellipse(x+10, y, wolfEye, wolfEye-3);
  noFill();
  triangle(x-20, y-20, x-8, y-20, x-15, y-40);
  triangle(x+20, y-20, x+8, y-20, x+15, y-40);
  ellipse(x, y+10, wolfEye-6, wolfEye-8);
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
  