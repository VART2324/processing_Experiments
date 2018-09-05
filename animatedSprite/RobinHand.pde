int numFramesH = 2;
int currentFrameH= 0;
PImage[] robinHandPics;

void robinHand() {
  robinHandPics[0] = loadImage("robin_0004.png");
  robinHandPics[1] = loadImage("robin_0005.png");
}

void robinHandAnim() {
  currentFrameH = (currentFrameH + 1) % numFramesH;
  image(robinHandPics[currentFrameH % numFramesH], robinX, robinY);
}