/**
 * 1 player pong... with a twist
 * Ben Taylor
 */
 
float a;                 // Angle of rotation
float ballheight = 0;
float ballstep = 0;
float ballgravity = .01;
float ballx = 0;
float ballxstep = 1;
int score = 0;

void setup() { 
  size(1000, 600, P3D);
  noStroke();  
} 
 

void draw() {
  
  lights();
  background(0);
  
  textSize(30);
  text("3D1PLAYERPONG",0,40);
  text(score,0,80);
  
  
  translate(width/2, height/2); 
  fill(255);
  pushMatrix();
  rotateY(a);
  translate(ballx,ballheight); 
  sphere(10);
  translate(ballx*-1,ballheight*-1);
  translate(mouseX-500,200); 
  
  if (ballheight > 170) {
    if (abs(ballx - (mouseX-500)) <= 100) {
      ballstep = ballstep * -1.01;
      fill(#00aaff);
      score++;
    }
  }
  
  box(200, 40, 40);
  popMatrix();
  
  
  
  ballstep -= ballgravity;
  ballheight -= ballstep;
  ballx += ballxstep;
  
  if (ballx > 200 || ballx < -200) {
     ballxstep *= -1;
  }
  a += 0.01;    
} 
