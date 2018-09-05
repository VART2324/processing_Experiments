//Control Keys: 1, 2, 3, any other key goes to default
//Take a look at the Tabs

int robinX;
int robinY;

void setup() {
  size(800, 600);
  frameRate(7.5);
  noCursor();

  robinHandPics = new PImage[numFramesH];
  robinKickPics = new PImage[numFramesK];
  robinStandPics = new PImage[numFramesS];
  robinFallPics = new PImage[numFramesF];

  robinHand();
  robinKick();
  robinStand();
  robinFall();
}

void draw() {
  background(255);
  imageMode(CENTER);

  robinX = mouseX;
  robinY = mouseY;

  switch(key) {
  case '1':
    robinHandAnim();
    break;
  case '2':
    robinKickAnim();
    break;
  case '3':
    robinFallAnim();
    break;
  default:
    robinStandAnim();
  }
}