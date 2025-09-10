char m = 'a';
int minRed, maxRed, minGreen, maxGreen, minBlue, maxBlue;

void setup() {
  size(400,400);
  minRed = 0;
  minBlue = 0;
  minGreen = 0;
  maxRed = 255;
  maxBlue = 255;
  maxGreen = 255;
  //noLoop();
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

void draw() {

}

void mousePressed(){ //changes the variation of the current color set by
  createScales();    //redrawing the scales
}

void keyReleased(){ //changes the color set and redraws the scales
  decideColor();
  createScales();
}

void createScales() {
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

void decideColor(){
  if (m == 'a') {
    m = 'r';
    minRed = 100;
    minGreen = 10;
    minBlue = 0;
    maxRed = 255;
    maxGreen = 10;
    maxBlue = 10;
  } else if (m == 'r') {
    m = 'o';
    minRed = 220;
    minGreen = 50;
    minBlue = 0;
    maxRed = 255;
    maxGreen = 130;
    maxBlue = 10;
  } else if (m == 'o') {
    m = 'y';
    minRed = 200;
    minGreen = 180;
    minBlue = 0;
    maxRed = 255;
    maxGreen = 255;
    maxBlue = 10;
  } else if (m == 'y') {
    m = 'g';
    minRed = 0;
    minGreen = 100;
    minBlue = 0;
    maxRed = 10;
    maxGreen = 255;
    maxBlue = 10;
  } else if (m == 'g') {
    m = 'c';
    minRed = 0;
    minGreen = 125;
    minBlue = 210;
    maxRed = 10;
    maxGreen = 255;
    maxBlue = 255;
  } else if (m == 'c') {
    m = 'b';
    minRed = 0;
    minGreen = 0;
    minBlue = 100;
    maxRed = 10;
    maxGreen = 10;
    maxBlue = 255;
  } else if (m == 'b') {
    m = 'i';
    minRed = 80;
    minGreen = 0;
    minBlue = 120;
    maxRed = 110;
    maxGreen = 10;
    maxBlue = 210;
  } else if (m == 'i') {
    m = 'v';
    minRed = 150;
    minGreen = 0;
    minBlue = 150;
    maxRed = 200;
    maxGreen = 10;
    maxBlue = 225;
  } else if (m == 'v') {
    m = 'w';
    minRed = 220;
    maxRed = 255;
  } else if (m == 'w') {
    m = 'n';
    minRed = 10;
    maxRed = 30;
  } else if (m == 'n') {
    m = 'l';
    minRed = 100;
    minGreen = 100;
    minBlue = 100;
    maxRed = 200;
    maxGreen = 200;
    maxBlue = 200;
  } else {
    m = 'a';
    minRed = 0;
    minBlue = 0;
    minGreen = 0;
    maxRed = 255;
    maxBlue = 255;
    maxGreen = 255;
  }
}

void scale(int x, int y){
  if (!(m == 'w') && !(m =='n')){
    if (!(m == 'l')){
      fill(
        (float)Math.random()*(maxRed-minRed)+ minRed,
        (float)Math.random()*(maxGreen-minGreen)+ minGreen,
        (float)Math.random()*(maxBlue-minBlue)+ minBlue
      );
    }else {
      int ran = (int)(Math.random() * 8) +1; //1 to 7
      if (ran == 1){
        fill(255,0,0); //red
      } else if (ran == 2) {
        fill(255,140,0); //o
      } else if (ran == 3) {
        fill(250,220,0); //y
      } else if (ran == 4) {
        fill(0,230,0); //g
      } else if (ran == 5) {
        fill(0,100,255); //b
      } else if (ran == 6) {
        fill(150,0,255); //i
      } else {
        fill(255,0,255); //v
      }
    }
  }else {
    fill((float)Math.random()*(maxRed-minRed)+ minRed); //monochrome values
  }
  beginShape();
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  curveVertex(x,y+9);
  
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
  curveVertex(x+30,y+9);
  
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  endShape();
}
