class Head
{
 float x, y;
 float headWidth;
 float headTop;
 float chinStart;
 float chinWidth;
 float eyeInside;
 float eyeWidth;
 float mouthWidth;
 float noseWidth;

Head()
{
 x = width/2;
 y = height/2; 
 headWidth = 600;
 headTop = 500;
 chinStart = x-200;
 chinWidth = 560;
 eyeInside = x-140;
 eyeWidth = 100;
 mouthWidth = 160;
 noseWidth = 100;
}

void drawHead()
{
  strokeWeight(5);
  noFill();
  arc(x, y-600, headWidth, headTop, PI, TWO_PI);
  line(headWidth+100, y-600, headWidth+120, y-360);
  line(headWidth+700, y-600, headWidth+680, y-360);
  arc(chinStart+200, y-360, chinWidth, y-300, -TWO_PI, -PI);
}

void drawFace()
{
  //eyes
 noFill();
 arc(eyeInside, y-480, eyeWidth, y-880, -TWO_PI, -PI);
 arc(eyeInside+280, y-480, eyeWidth, y-880, -TWO_PI, -PI);
 line(eyeInside-52, y-480, eyeInside-100, y-500);
 line(eyeInside-100, y-500, eyeInside+40, y-480);
 line(eyeInside+332, y-480, eyeInside+380, y-500);
 line(eyeInside+380, y-500, eyeInside+240, y-480);
 arc( eyeInside+55, y-480, 7, y-899, PI, TWO_PI);
 arc( eyeInside+226, y-480, 7, y-899, PI, TWO_PI);
  //mouth
 arc(x, y-230, mouthWidth, y-880, -TWO_PI, -PI);
 arc(x, y-210, mouthWidth-40, y-860, -TWO_PI, -PI);
 arc(x-15, y-240, mouthWidth-130, y-890, PI, TWO_PI);
 arc(x+15, y-240, mouthWidth-130, y-890, PI, TWO_PI);
  //nose
 arc(x, y-330, noseWidth, y-860, -TWO_PI, -PI);
  //eyebrows
 arc(x-150, y-550, mouthWidth, y-870, PI, TWO_PI);
 arc(x+150, y-550, mouthWidth, y-870, PI, TWO_PI);
  //cheekbones
 line(headWidth+120, y-360, headWidth+150, y-300);
 line(headWidth+680, y-360, headWidth+650, y-300);
}


void drawHeadphones()
{
 strokeWeight(6);
 noFill();
 arc(x, y-560, headWidth+120, headTop+160, PI, TWO_PI);
 rect(headWidth+120, y-580, headWidth-720, y-700);
 rect(headWidth+680, y-580, headWidth-480, y-700);
 rect(headWidth+120, y-600, headWidth-700, y-660);
 rect(headWidth+680, y-600, headWidth-500, y-660);
   
}

void render ()
{
  stroke(255,0,255);
  drawHeadphones();
  drawHead();
  drawFace();
}

 void update()
 {
 
 }
}