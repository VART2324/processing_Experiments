float a = 0;
float b = 0;
float r = 100;

void setup(){
 
  size (500, 500);
  
}

void draw(){
  
 float x = sin(a) * r;
 float y = cos(b) * r;
 
 ellipse(x+width/2, y+height/2, 10, 10);
 
  a = a + 0.005;
  b = b + 0.01;
}