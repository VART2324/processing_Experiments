int numFramesS = 2;
int currentFrameS= 0;
PImage[] robinStandPics;

void robinStand() {
  robinStandPics[0] = loadImage("robin_0006.png");
  robinStandPics[1] = loadImage("robin_0007.png");
}

void robinStandAnim() {
  currentFrameS = (currentFrameS + 1) % numFramesS;
  image(robinStandPics[currentFrameS % numFramesS], robinX, robinY);
}