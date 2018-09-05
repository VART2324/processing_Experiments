int numFramesF = 10;
int currentFrameF= 0;
PImage[] robinFallPics;

void robinFall() {
  robinFallPics[0] = loadImage("robin_0000.png");
  robinFallPics[1] = loadImage("robin_0001.png");
  robinFallPics[2] = loadImage("robin_0002.png");
  robinFallPics[3] = loadImage("robin_0002.png");
  robinFallPics[4] = loadImage("robin_0008.png");
  robinFallPics[5] = loadImage("robin_0008.png");
  robinFallPics[6] = loadImage("robin_0009.png");
  robinFallPics[7] = loadImage("robin_0009.png");
  robinFallPics[8] = loadImage("robin_0009.png");
  robinFallPics[9] = loadImage("robin_0009.png");
}

void robinFallAnim() {
  currentFrameF = (currentFrameF + 1) % numFramesF;
  image(robinFallPics[currentFrameF % numFramesF], robinX, robinY);
}