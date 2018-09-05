class JitBug{

  float x;
  float y;
  int diameter;
  float speed = 2.5;
  
  JitBug(float tempX, float tempY, int tempDiameter){
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
  }


  void move(){
    x += random(-speed, speed);
    y += random(-speed, speed);
  }

  void display(){
    fill(255);
    ellipse(x, y, diameter, diameter);
  }
}