

void setup(){
 size(800, 600);
 background(0);
}


void draw(){
  fill(0, 15);
  rect(0, 0, width, height);
  
  int bottomEndX = mouseX;
  
  stroke(0, 0, 255);                  //blue
  line(100, 100, bottomEndX, 500);
  line(200, 100, bottomEndX, 500);
  line(300, 100, bottomEndX, 500);
  line(400, 100, bottomEndX, 500);
  line(500, 100, bottomEndX, 500);
  line(600, 100, bottomEndX, 500);
  line(700, 100, bottomEndX, 500);
  
  translate(width, 0);                 //moves everything below all the way to the right...
  scale(-1, 1);                        //flips everything below horizontally...
  
  stroke(255, 0, 0);                   //red 
  line(100, 100, bottomEndX, 500);
  line(200, 100, bottomEndX, 500);
  line(300, 100, bottomEndX, 500);
  line(400, 100, bottomEndX, 500);
  line(500, 100, bottomEndX, 500);
  line(600, 100, bottomEndX, 500);
  line(700, 100, bottomEndX, 500);
  
  println(bottomEndX);
}