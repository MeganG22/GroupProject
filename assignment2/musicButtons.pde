class MusicButtons
{
  float x, y;
  float buttonWidth;
  float buttonHeight;
  float guitarHeadWidth;
  float guitarHeadHeight;
  float guitarDetail;
  float micTop;
  float keyboardWidth;
  float keyboardHeight;
  float keyWidth;
  float keyHeight;
  color c = color(random(0,255), random(0,255), random(0,255));

MusicButtons()
{
  x = width/2;
  y = height/2; 
  buttonWidth = 200;
  buttonHeight = 200;
  guitarHeadWidth = 40;
  guitarHeadHeight = 60;
  guitarDetail = 8;
  micTop = 40;
  keyboardWidth = 100;
  keyboardHeight = 80;
  keyWidth = 6;
  keyHeight = 40;
}

void drawGuitar()
{
 fill(250);
 ellipse(x-600, y-750, buttonWidth, buttonHeight);
 noFill();
 stroke(0);
 strokeWeight(6);
  //guitar head & neck
 rect(x-620, y-800, guitarHeadWidth, guitarHeadHeight);
 line(x-610, y-740, x-610, y-500);
 line(x-590, y-740, x-590, y-500);
 strokeWeight(1);
  //guitar strings
 line(x-596, y-740, x-596, y-500);
 line(x-598, y-740, x-598, y-500);
 line(x-600, y-740, x-600, y-500);
 line(x-602, y-740, x-602, y-500);
 line(x-604, y-740, x-604, y-500);
  //guitar screws
 ellipse(x-610, y-790, guitarDetail, guitarDetail);
 ellipse(x-610, y-770, guitarDetail, guitarDetail);
 ellipse(x-610, y-750, guitarDetail, guitarDetail); 
 ellipse(x-590, y-790, guitarDetail, guitarDetail);
 ellipse(x-590, y-770, guitarDetail, guitarDetail);
 ellipse(x-590, y-750, guitarDetail, guitarDetail);
  //guitar pegs
 rect(x-630, y-790, guitarDetail, guitarDetail);
 rect(x-630, y-770, guitarDetail, guitarDetail);
 rect(x-630, y-750, guitarDetail, guitarDetail); 
 rect(x-578, y-790, guitarDetail, guitarDetail);
 rect(x-578, y-770, guitarDetail, guitarDetail);
 rect(x-578, y-750, guitarDetail, guitarDetail); 
 ellipse(x-600, y-750, buttonWidth-10, buttonHeight-10);
}

void drawVoice()
{
 fill(250);
 ellipse(x-750, y-450, buttonWidth, buttonHeight);
 noFill();
 stroke(0);
 strokeWeight(6);
  //mic top & body
 ellipse(x-750, y-470, micTop, micTop);
 line(x-730, y-470, x-750, y-380);
 line(x-770, y-470, x-750, y-380);
 line(x-750, y-380, x-750, y-300); 
 strokeWeight(1);
  //mic details
 line(x-770, y-470, x-730, y-470);
 line(x-770, y-480, x-730, y-480);
 line(x-770, y-460, x-730, y-460);
 line(x-760, y-490, x-760, y-450);
 line(x-740, y-490, x-740, y-450);
 line(x-750, y-490, x-750, y-450);
 ellipse(x-750, y-450, buttonWidth-10, buttonHeight-10);
}


void drawHeartbeat()
{
 fill(250);
 ellipse(x-600, y-150, buttonWidth, buttonHeight);
 noFill();
 stroke(0);
 strokeWeight(6);
  //lines & heart
 line(x-700, y-150, x-625, y-150);
 line(x-585, y-150, x-400, y-150);
 arc(x-615, y-150, 20, 20, PI, TWO_PI);
 arc(x-595, y-150, 20, 20, PI, TWO_PI);
 line(x-625, y-150, x-605, y-130);
 line(x-585, y-150, x-605, y-130);
 strokeWeight(1);
  //detail heart
 arc(x-615, y-150, 30, 30, PI, TWO_PI);
 arc(x-595, y-150, 30, 30, PI, TWO_PI);
 line(x-630, y-150, x-605, y-120);
 line(x-580, y-150, x-605, y-120);
 ellipse(x-600, y-150, buttonWidth-10, buttonHeight-10);

}

void drawHarmony()
{
 fill(250);
 ellipse(x+600, y-750, buttonWidth, buttonHeight);
 noFill();
 stroke(0);
 strokeWeight(6);
 ellipse(x+600, y-750, micTop, micTop);
 line(x+580, y-750, x+600, y-670);
 line(x+620, y-750, x+600, y-670);
 line(x+600, y-670, x+600, y-300); 
 strokeWeight(1);
  //mic details
 ellipse(x+620, y-770, micTop, micTop);
 line(x+600, y-770, x+620, y-670);
 line(x+640, y-770, x+620, y-670);
 line(x+620, y-670, x+620, y-300); 
 ellipse(x+600, y-750, buttonWidth-10, buttonHeight-10);
}

void drawHighbeat()
{
 fill(250);
 ellipse(x+750, y-450, buttonWidth, buttonHeight);
 noFill();
 stroke(0);
 strokeWeight(6);
 line(x+600, y-450, x+720, y-450);
 line(x+765, y-450, x+850, y-450);
 line(x+720, y-450, x+735, y-500);
 line(x+735, y-500, x+750, y-400);
 line(x+750, y-400, x+765, y-450);
 strokeWeight(1);
 line( x+600, y-444, x+850, y-444);
 ellipse(x+750, y-450, buttonWidth-10, buttonHeight-10);
}

void drawKeyboard()
{
 fill(250);
 ellipse(x+600, y-150, buttonWidth, buttonHeight);
 noFill();
 stroke(0);
 strokeWeight(6);
  //main board & black keys
 rect(x+550, y-180, keyboardWidth, keyboardHeight);
 rect(x+565, y-180, keyWidth, keyHeight);
 rect(x+595, y-180, keyWidth, keyHeight);
 rect(x+625, y-180, keyWidth, keyHeight);
 strokeWeight(1);
  //white keys 
 line(x+568, y-180, x+568, y-100); 
 line(x+598, y-180, x+598, y-100); 
 line(x+628, y-180, x+628, y-100); 
 ellipse(x+600, y-150, buttonWidth-10, buttonHeight-10);
}

void drawPlay()
{
  fill(255);
  triangle(x-80, y-20, x-80, y+50, x-40, y+15);
  rect( x+40, y-20, 10, 70);
  rect( x+60, y-20, 10, 70);
}

void render ()
{
  pushMatrix();
  
  fill(c,c,c);
  drawGuitar();
  drawVoice();
  drawHeartbeat();
  drawHarmony();
  drawHighbeat();
  drawKeyboard();
  drawPlay();
  
  popMatrix();
  
}

 void update()
 {
 
 }
}