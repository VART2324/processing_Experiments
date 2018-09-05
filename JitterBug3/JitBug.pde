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
    //x = mouseX;
    //y = mouseY;
  }

  void display(){
    pushMatrix();
    translate(x, y);
    fill(255);
    stroke(0);
    strokeWeight(1);
    ellipse(0, 0, diameter, diameter);
    fill(0);
    stroke(255, 0, 0);
    strokeWeight(4);
    ellipse(random((diameter*-1)/10, diameter/10), random((diameter*-1)/10, diameter/10), diameter/2, diameter/2);
    popMatrix();
  }
}