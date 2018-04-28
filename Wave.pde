class Wave
{
  float waveLength;
  float waveHeight;
  float waveHalf;
  float theta;
  PVector pos;
  PVector forward;
  float speed;
  
  Wave()
  {
    waveLength = 120;
    waveHeight = 100;
    waveHalf = 60;
    theta = random(PI+PI/6,PI*2-PI/6);
    pos = new PVector(600,500);
    speed = 2;
  }
  
  void render()
  {
    stroke(random(725*255.0f/ai.bufferSize(),1275*255.0f/ai.bufferSize()), 255, 255);
    noFill();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(theta);
    arc(0, 0, waveHalf, waveHeight, PI, TWO_PI);
    arc(waveHalf, 0, waveHalf, waveHeight, -TWO_PI, -PI);
    arc(waveLength, 0, waveHalf, waveHeight-40, PI, TWO_PI);
    arc(waveLength+waveHalf, 0, waveHalf, waveHeight-50, -TWO_PI, -PI);
    popMatrix();
  }
  
  void update()
  {
    if(pos.x>=-100)
    {
      forward = new PVector(sin(theta)*speed,-cos(theta)*speed);
      pos.add(forward);
    }
  }
  
}