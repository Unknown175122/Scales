void setup() {
  size(400,400);
}

void draw() {
  for (int y = height-15; y >=-33; y-=16) {
    for (int x = 0; x <=width; x+=30){ //row 1
      scale(x,y);
    }
    y-=16;
    for (int x = -15; x <=width; x+=30){ //row 2(alternating rows)
      scale(x,y);
    }
  }
}

void scale(int x, int y){
  beginShape();
  vertex(x+15,y);
  vertex(x,y+10);
  
  curveVertex(x,y+10);
  curveVertex(x,y+10);
  curveVertex(x+1,y+15.6);
  curveVertex(x+3,y+21.2);
  curveVertex(x+8,y+27.5);
  curveVertex(x+14,y+32.5);
  curveVertex(x+15,y+33);
  
  curveVertex(x+15,y+33);
  curveVertex(x+16,y+32.5);
  curveVertex(x+22,y+27.5);
  curveVertex(x+27,y+21.2);
  curveVertex(x+29,y+15.6);
  curveVertex(x+30,y+10);
  curveVertex(x+30,y+10);
  
  vertex(x+30,y+10);
  vertex(x+15,y);
  endShape();
}

void bigScale(int x, int y) {
  beginShape();
  vertex(200,0);
  vertex(50,100);
  
  curveVertex(50,100);
  curveVertex(50,100);
  curveVertex(60,156);
  curveVertex(80,212);
  curveVertex(130,275);
  curveVertex(190,325);
  curveVertex(200,330);
  
  curveVertex(200,330);
  curveVertex(210,325);
  curveVertex(270,275);
  curveVertex(320,212);
  curveVertex(340,156);
  curveVertex(350,100);
  curveVertex(350,100);
  
  vertex(350,100);
  vertex(200,0);
  endShape();
}
