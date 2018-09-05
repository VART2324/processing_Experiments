//Press the 's' key...
//You can place functions in other Tabs to keep things organized (see the loadSVGs tab)

PShape tri; //a variable to hold the SVG
PShape bal; //a variable to hold the SVG
PShape sqa; //a variable to hold the SVG

float triRad = 0.0; //0 radians, or 0 degrees
float balRad = 4.2; //4.2 radians, or 240 degrees
float sqaRad = 2.1; //2.1 radians, or 120 degrees

float speed = 0.1; //the speed of each cycle, added to radians, lower numbers make it slower

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  
  if(keyPressed && key == 's'){
  sqaShape(); //runs this function
  triShape(); //runs this function
  balShape(); //runs this function
  }
}
