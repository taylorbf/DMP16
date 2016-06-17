
Parrot mybird = new Parrot();

void setup() {
  size(1200,600);
  noStroke();
}

void draw() {
  background(#D8BA8A);
  mybird.fly();
}

class Parrot {
  
  float x=0;
  float y=0;
  
  Parrot() {
    
  }
  
  void fly() {
    pushMatrix();
    translate(x,y);
    scale(0.5, 0.5);
    fill(#356A86);
    triangle(30,250,150,280,150,250);
    fill(#BBEAE9, 100);
    arc(289,250,300,300,0,PI);
    fill(#85D8B5, 100);
    arc(260,250,240,240,0,PI);
    fill(#51AFE0, 100);
    arc(230,250,190,190,0,PI);
    translate(260,0);
    fill(#4EABC1,100);
    ellipse(150,210,120,120);
    fill(#A27F45,100);
    triangle(200,190,200,220,250,210);
    fill(#203131);
    ellipse(185,190,20,20);
    translate(-260,0);
    fill(#A27F45);
    rect(290,400,10,60);
    fill(#A27F45);
    rect(270,460,50,10);
    popMatrix();
    
    x += 1;
    
  }
  
}

