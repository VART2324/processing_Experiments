int i = 0;
boolean buttonEnabled = true;
void setup() {
}

void draw() {
  if (keyPressed && key == 'a') {
    if (buttonEnabled) {
      if (i >= 10) {
        i = 0;
      } else {
        i = i+1;
        buttonEnabled = false;
      }
    }
  }
  if(!keyPressed){
   buttonEnabled = true; 
  }
  println(i);
}
