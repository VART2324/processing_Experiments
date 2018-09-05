float dia = 30;
float rad = dia / 2;
float x = 200;
float y = 00;
float ycon;
float yspeed = 0;
float xspeed = 1;
float decay = -0.7;
float gravity = 0.3;
float angle = 0;
float rot = 0.1;
float top = 0;
float lWall = 200;
float rWall = 600;
float btm = 550;

void setup(){
  size(800, 600);
  
}

void draw(){
  background(0);
  //filter(BLUR, 1);
  pushMatrix();
  translate(x, ycon);
  rotate(angle);
  rectMode(CENTER);
  rect(0, 0, dia, dia);
  bounce();
  popMatrix();
  
  stroke(255);
  line(lWall, btm, rWall, btm);
  println(rot, angle);
}

void bounce(){
 x += xspeed;
 angle += rot;
 yspeed += gravity;
 y += yspeed;
 ycon = constrain(y, top, btm-rad);
 if(y >= btm-rad){
  yspeed *= -0.95;
  rot *= decay;
 }

 if(x >= rWall || x <= lWall){
   xspeed = xspeed * -1;
   rot *= decay;
 }
 
}
