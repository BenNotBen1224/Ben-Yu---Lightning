//variables for color of body
float x = 178;
float y = 23;
float z = 85;

//variables for Lightning
float x1 = -215;
float x11 = 215;
float x2;
float x22;
float y1 = 90;
float y11 = 90;
float y2;
float y22;

void setup(){
 size(1000,1000);
}

void draw(){
  background(50);
 
  //variables for color of body
  x = 255*sin(x/25);
  y = 255*cos(y/25);
  z = 255*tan(z/25);
 
  translate(500, 400);

  //Crab
  stroke(0,0,0);
  //left hand
  fill(102,255,102);
  triangle(-230, 50, -200, 140, -100, 40);
  triangle(-215, 90, -330, 110, -230, 50);
  triangle(-215, 90, -320, 150, -200, 140);
  fill(255,255,255);
  //right hand
  triangle(230, 50, 200, 140, 100, 40);
  triangle(215, 90, 310, 130, 230, 50);
  triangle(215, 90, 310, 130, 200, 140);
  //legs
  fill(23,23,23);
  triangle(-110, 200, 10, 200, -60, 300);
  triangle(110, 200, -10, 200, 60, 300);
  fill(255,255,255);
  //body
  fill(x, y, z);
  ellipse(0, 100, 300, 300);
  fill(255,255,255);
  //head
  fill(23,23,23);
  ellipse(0, -50, 170, 160);
  fill(255,255,255);
  //smile
  arc(0, -20, 110, 60, PI/6, 7*PI/6);
  //eyes and stuff
  ellipse(-30, -170, 30, 30);
  ellipse(30, -170, 30, 30);
  strokeWeight(2);
  line(-20, -130, -30, -155);
  line(20, -130, 30, -155);
  line(-30, -170, -16, -165);
  line(30, -170, 43, -174);
  //stomach
  line(-10, 150, 10, 170);
  line(-10, 170, 10, 150);
  
  while(x1 >= -500){
    
  //variables for left Lightning
  x2 = x1 - (float)(Math.random()*30);
  y2 = y1 + 70*cos((float)(Math.random()*6.28));
  
  //Outer Lightning
  strokeWeight(4);
  stroke(147, 185, 223);
  stroke(y, z ,x);
  line(x1, y1, x2, y2);
 
  //Inner Lightning
  strokeWeight(2);
  stroke(125, 249, 255);
  line(x1, y1, x2, y2);
  x1 = x2;
  y1 = y2;
  }
  
  while(x11 <= 500){
    
  //variables for right Lightning
  x22 = x11 + (float)(Math.random()*30);
  y22 = y11 + 70*cos((float)(Math.random()*6.28));
  
  //Outer Lightning
  strokeWeight(4);
  stroke(217, 218, 219);
  stroke(z, x, y);
  line(x11, y11, x22, y22);
 
  //Inner Lightning
  strokeWeight(2);
  stroke(125, 249, 255);  
  line(x11, y11, x22, y22);
  x11 = x22;
  y11 = y22;
 }

 if(x1 < -500){
    x1 = -215;
    x2 = 0;
    y1 = 90;
    y2 = 0;
  }
  
  if(x11 > 500){
    x11 = 215;
    x22 = 0;
    y11 = 90;
    y22 = 0;
  }
  
  texts();

}

void texts(){
textSize(18);
fill(89,203,232);
text("By observing the number of lightning shocks going through the crab, while assuming that one lightning shock ", -500, 400);
text("is equivalent to 0.001 amp of electric current and the voltage difference between the left and right is 20V,", -500, 430);
text("What is the crab's internal electrical resistance? How much power is absorbed by the crab to illuminate its stomach?", -500, 460);
}
