float radius = 200;
int pointNum = 180;
float angle = TWO_PI/pointNum;
float xoff = 0.0;
float yoff = 0.0;
float noiseScale = 0.05;

void setup() {
  size(700, 600);
}


void draw()
{


  background(0);

  stroke(255);

  xoff = xoff + 0.5;
  yoff = yoff + 0.5;

  for (int i=0; i<pointNum; i++)
  {
    float xRad = radius*sin(angle*i);
    float yRad = radius*cos(angle*i);
    float noiseVal = noise((xoff+i)*noiseScale, yoff*noiseScale);
    line(width/2 + xRad, height/2 + yRad, width/2 + xRad * noiseVal, height/2 + yRad * noiseVal);
  }
}
