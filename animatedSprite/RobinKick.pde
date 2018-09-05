int numFramesK = 7;
int currentFrameK= 0;
PImage[] robinKickPics;

void robinKick() {
  robinKickPics[0] = loadImage("robin_0000.png");
  robinKickPics[1] = loadImage("robin_0001.png");
  robinKickPics[2] = loadImage("robin_0002.png");
  robinKickPics[3] = loadImage("robin_0002.png");
  robinKickPics[4] = loadImage("robin_0003.png");
  robinKickPics[5] = loadImage("robin_0004.png");
  robinKickPics[6] = loadImage("robin_0000.png");
}

void robinKickAnim() {
  currentFrameK = (currentFrameK + 1) % numFramesK;
  image(robinKickPics[currentFrameK % numFramesK], robinX, robinY);
}