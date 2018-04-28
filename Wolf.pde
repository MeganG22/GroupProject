class Wolf
{
  float wolfEye;
  float wolfWidth;
  float theta;
  PVector pos;
  PVector forward;
  float speed;
  
  Wolf()
  {
    wolfEye = 10;
    wolfWidth = 50;
    theta = random(PI-PI/6,PI+PI/6);
    pos = new PVector(1000,300);
    speed = 2;
  }
  
  void render()
  {
    stroke(random(725*255.0f/ai.bufferSize(),1275*255.0f/ai.bufferSize()), 255, 255);
    noFill();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(theta);
    stroke(random(725*255.0f/ai.bufferSize(),1275*255.0f/ai.bufferSize()), 255, 255);
    ellipse(10, 0, wolfEye, wolfEye-3);
    ellipse(10, 0, wolfEye, wolfEye-3);
    triangle(20, 20, -8, -20, -15, -40);
    triangle(20, 20, 8, -20, 15, -40);
    ellipse(0, 10, wolfEye-6, wolfEye-8);
    popMatrix();
  }
  
  void update()
  {
     if(pos.y>=200)
    {
      forward = new PVector(sin(theta)*speed,-cos(theta)*speed);
      pos.add(forward);
    }
  }
  
}