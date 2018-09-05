/*See the chapters on Functions, Objects and Arrays in the book Getting Started with Processing.*/


EyeBall[] eye = new EyeBall[100];      //Declare and create an array of 100 copies of the EyeBall Object.
int eyeCount = 0;                      //Declare eyeCount as an global int variable and assign a value.


int irisX = 0;

void setup() {
  size(700, 700);                         //The size of the canvas.
  background(0);                        //The background color.

  for (int i = 0; i < eye.length; i++) {  //As long as "i" is less than "eye.length", which is set to "100", keep increasing "i".
    float x = width/2;                    //Declare x as an float variable and assign a value.                   
    float y = height/2;                   //Declare y as an float variable and assign a value.
    int r = int (random (20, 100));       //Declare r as an int variable and assign a value.
    eye[i] = new EyeBall(x, y, r);        //Load each eye into the array.
  }
}
void mousePressed() {                    //Each time the mouse is clicked...
  eyeCount = eyeCount + 1;               //...increase eyeCount by 1.
}

void keyPressed() {                      //Each time any key is pressed...
  eyeCount = eyeCount - 1;               //...decrease eyeCount by 1.
}

void draw() {
  
    noStroke();
  rect(0, 0, width, height);

  for (int i = 0; i < eyeCount; i++) {    //As long as "i" is less than "eyeCount" keep increasing "i".
    eye[i].move();                        //Move each eye[?] according to the parameters defined in the EyeBall object class.
    eye[i].display();                     //Display each eye[?] according to the parameters defined in the EyeBall object class.
    eye[i].trap();                        //Prevent each eye[?] from leaving the canvas.
    eye[i].look();
  }
}


//The EyeBall Object*********************
//Create the Block...
class EyeBall {
  //Add the Fields...
  float x;
  float y;
  int diameter;
  float speed = 2.5;

  //Write the Constructor to assign values to the Fields...
  EyeBall(float tempX, float tempY, int tempDiameter) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
  }
  
  //Add the Methods...
  void move() {                     //Move the EyeBall (method)
    x += random(-speed, speed);
    y += random(-speed, speed);
  }
  void display() {     //Draw the EyeBall (method)

    pushMatrix();
    translate(x, y);
    fill(255);
    stroke(255);
    strokeWeight(1);
    ellipse(0, 0, diameter, diameter);
    fill(0);
    ellipse(irisX, 0, diameter/2, diameter/2);
    popMatrix();
  }
  void trap() {                    //Trap the EyeBall (method)
    if (x < 0 + diameter) {
      x = 0 + diameter;
    }else if (x > width - diameter) {
      x = width - diameter;
    }
    if (y < 0 + diameter) {
      y = 0 + diameter;
    }else if (y > height - diameter) {
      y = height - diameter;
    }
  }
  void look() {
    int time = second();
    if (time % 2 == 0) {
      irisX = - 10;
    }else{
      irisX = + 10;
    }
  }
}