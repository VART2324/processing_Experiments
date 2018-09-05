

Bubble[] bubbles = new Bubble[50];

int bubCount = 50;

void setup(){
  size(640,360,P2D);
  for (int i = 0; i < bubbles.length; i++){
  bubbles[i] = new Bubble(random(100));
  }
  
  
}

void draw(){
  background(255);
  
  for (int i = 0; i < bubCount; i++){
  bubbles[i].ascend();
  bubbles[i].display();
  bubbles[i].top();
  }
  
}

//void mousePressed() {
//  bubCount = bubCount + 1;
//}

//void keyPressed() {
//  bubCount = bubCount - 3;
//}