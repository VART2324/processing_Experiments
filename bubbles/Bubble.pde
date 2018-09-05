class Bubble {
 
  //Data
  float x;
  float y;
  float diameter;
  float yspeed;
  
  
  //Constructor
  Bubble(float tempD) { 
  x = random(width);
  y = height;
  diameter = tempD;
  yspeed = random(0.25, 2);
  }

  
  //Functionality
  void ascend() {
    y = y - yspeed;
    x = x + random(-1, 1);
  }
  

  void display() {
    stroke(0);
    //noFill();
    fill(127, 20, 62, 124);
    ellipse(x, y, diameter, diameter);
  }
  
  void top() {
    if (y < diameter/2){
      y = height + diameter;
    }
  }
  
}