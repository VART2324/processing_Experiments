float dia = 30;
float rad = dia / 2;
float x = 0;
float y = 300;
float yspeed = 0;
float gravity = 0.1;
float btm = 500;

void setup(){
  size(800, 600);
}

void draw(){
  
  ellipse(x, y, dia, dia);
  bounce();
  println(yspeed);
}

void bounce(){
 x += 1;
 y += yspeed;
 yspeed += gravity;
 if(y >= btm-rad){
  yspeed *= -0.95; 
 }
}
