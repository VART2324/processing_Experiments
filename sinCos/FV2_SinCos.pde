float a = 0;
float x;
void setup(){
 size(800, 600);
 colorMode(HSB, 360, 100, 100, 1.0);
 background(0);
}

void draw(){
  
  fill(75, 25, 25, 0.35);
  rectMode(CORNER);
  rect(0, 0, width, height);
  
  //x = width / 2 + sin(a) * 200;
  x = x+5;
  float y = height / 2 + cos(a) * 100;
  fill(75, 25, 50);
  noStroke();
  rectMode(CENTER);
  rect(x, y, 30, 30);
  
  a = a + 0.1;
}
