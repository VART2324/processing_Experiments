int audrie = 90;

void setup(){

size(800, 600);
noCursor();
}

void draw(){
  background(126);
  fill(255, 40, 92);
rectMode(CENTER);
rect(mouseX, mouseY, audrie, random(40,50));

rectMode(CENTER);
rect(mouseX + 200, mouseY, audrie, random(40,50));


}

void mousePressed(){
  audrie = audrie + 10;
}