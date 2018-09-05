PImage mask;
int cellsize = 2;
int cols, rows;


void setup() {
 
  size(500,325,P3D);
  mask = loadImage("grackle.jpg");
  imageMode(CENTER);
  //background(0);
  cols = width/cellsize;
  rows = height/cellsize;
  
}


void draw() {
  mask.loadPixels();

  for (int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      int x = i*cellsize + cellsize/2;
      int y = j*cellsize + cellsize/2;
      int loc = x + y*width;
      color c = mask.pixels[loc];
      
      float z = map(brightness(mask.pixels[loc]), 0, 255, 0, mouseX*2);
      
      pushMatrix();
      translate(x,y,z);
      fill(c);
      noStroke();
      rectMode(CENTER);
      ellipse(0,0, cellsize,cellsize);
      popMatrix();
      
    }
      
  
  }
  
}
