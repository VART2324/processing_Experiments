/*
press any letter key and wait:
random words when a key is pressed.
the words fade.
the image slides.
*/
PImage retroAnime; //a variable for an image

//an array of words
String [] infiniTForce = {"hurricane polymar", "gatchaman", "tekkaman", "cashan", "science ninja", "space knight", "tatsunoko"};

float angle = 0; //the beginning angle for the sin function.

float speed = 0.01; //the speed. Lower is slower, higher is faster.

void setup() {
  size(800, 600); 
  colorMode(HSB, 360, 100, 100, 100);

  retroAnime = loadImage("infinitforce.jpg"); //loads the image
  image(retroAnime, 0, 0, width, height); //displays the image
}

void draw() {
  angle = angle + speed; //keeps adding the speed number to the angle number.
  
  //sin cycles between -1.0 and 1.0. Here -1 is mapped to 240, and 1 is mapped to 560
  float picSlide = map(sin(angle), -1, 1, 240, 560); 
  
  pushMatrix(); //isolate all transformations (translate, scale, rotate) to this section of code
  translate(picSlide, height/2); //position this section of code based on the changing value of picSlide
  tint(360, 40); //makes the image full color but transparent so the words fade out. Higher second number means faster fade out.
  imageMode(CENTER); //position image based on its center
  image(retroAnime, 0, 0); //displays the same image as in void setup, but with tint
  popMatrix(); //end of isolating transformation for this section of code
}

void keyPressed() { //when a key is pressed
  textSize(75);
  fill(random(50, 60), 100, 100, 100);
  textAlign(CENTER);
  int members = int(random(infiniTForce.length)); //place a random word from the String array into this variable
  
  pushMatrix(); //isolate all transformations (translate, scale, rotate) to this section of code
  translate(random(200, 600),random(100, 500)); //position for this section of code
  rotate(random(-2.1, 2.1)); //random rotation (in radians) for this section of code
  text(infiniTForce[members], 0, 0); //display text based on the random word placed in members
  popMatrix(); //end of isolating transformation for this section of code
}
