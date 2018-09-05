                 
JitBug[] jit = new JitBug[100];
int bugCount = 0;
//JitBug jit2 = new JitBug(220, 240, 30);
//JitBug jit3 = new JitBug(240, 260, 40);
//JitBug jit4 = new JitBug(260, 240, 50);
//JitBug jit5 = new JitBug(240, 220, 20);
//JitBug jit6 = new JitBug(220, 240, 30);
//JitBug jit7 = new JitBug(240, 260, 40);
//JitBug jit8 = new JitBug(260, 240, 50);

void setup(){
  size(480, 480);
  background(255);
for (int i = 0; i < jit.length; i++){
  float x = 240;
  float y = 240;
  int r = int (random (20, 50));
  jit[i] = new JitBug(x, y, r);
  

}

}
void mousePressed(){
  bugCount = bugCount + 1;
}

void keyPressed(){
  bugCount = bugCount - 1;
}

void draw(){
  for (int i = 0; i < bugCount; i++){
  jit[i].move();
  jit[i].display();
}
}