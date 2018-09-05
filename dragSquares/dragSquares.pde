Rectangle[] square = new Rectangle[4];

void setup() {
  size (800, 800);

  for (int i = 0; i<square.length; i++) {
    int x = int(random(width));
    int y = 400;
    int d = 150;
    square[i] = new Rectangle(x, y, d);
  }
}


void draw() {
  //int x = width/2;
  //int y = height/2;
  //float diameter = 200;
  background(255);


  for (int i = 0; i<square.length; i++) {
    square[i].drag();
    square[i].display();
  }
}


class Rectangle {
  
  int d;

  int x1;
  int y1;
  int x2;
  int y2;  


  Rectangle(int tempX1, int tempY1, int tempD) {

    d = tempD;
    x1 = tempX1;
    y1 = tempY1;
    x2 = tempX1 + tempD;
    y2 = tempY1 + tempD;
  }

  void drag() {

    if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
      cursor(MOVE);
      if (mousePressed) {
        x1 = mouseX - d/2;
        y1 = mouseY - d/2;
        x2 = mouseX + d/2;
        y2 = mouseY + d/2;
      } else {
        cursor(ARROW);
      }
    }
  }

  void display() {
    fill(0);
    noStroke();
    rectMode(CORNERS);
    rect(x1, y1, x2, y2);
  }
}