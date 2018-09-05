int horizontal;
int vertical;
int speed = 1;


void setup(){
  size(800, 600);
  horizontal = width/2;
  vertical = height/2;
}

void draw(){  
  noStroke();
  rectMode(CENTER); 
  rect(horizontal, vertical, 10, 10); 
  move();
}

void move(){
  if (keyPressed && key == CODED){
    if (keyCode == UP){
      vertical = vertical - speed;
    }else{
     vertical = vertical; 
    }
    if (keyCode == DOWN){
      vertical = vertical + speed;
    }else{
     vertical = vertical; 
    }
    if (keyCode == LEFT){
      horizontal = horizontal - speed;
    }else{
     horizontal = horizontal; 
    }
    if (keyCode == RIGHT){
      horizontal = horizontal + speed;
    }else{
     horizontal = horizontal; 
    }
  }
}
