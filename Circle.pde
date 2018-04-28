class Circle
{
  float circleSize;
  float theta;
  PVector pos;
  PVector forward;
  float speed;
  
  Circle()
  {
    circleSize = 80;
    theta = random(PI/6,PI-PI/6);
    pos = new PVector(1400,500);
    speed = 2;
  }
  
  void render()
  {
    stroke(random(725*255.0f/ai.bufferSize(),1275*255.0f/ai.bufferSize()), 255, 255);
    noFill();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(theta);
    ellipse(0, 0, circleSize, circleSize); 
    popMatrix();
  }
  
  void update()
  {
     if(pos.x<=2100)
    {
      forward = new PVector(sin(theta)*speed,-cos(theta)*speed);
      pos.add(forward);
    }
  }
  
}