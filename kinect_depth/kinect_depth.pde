import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;
import org.openkinect.tests.*;
Particle[] particles;
Kinect2 kinect2;
PImage img;

float minThresh = 600;
float maxThresh = 1200;

void setup() {
  size(1024, 848);
  kinect2 = new Kinect2(this);
  
  kinect2.initDepth();
  kinect2.initDevice();  
  img = createImage(kinect2.depthWidth, kinect2.depthHeight, RGB);
  
  particles = new Particle [8000];
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
  background(0);
  
}

void draw() {
 
  //background(0);
  scale(2);
  img.loadPixels();
  

  
  
  int[] depth = kinect2.getRawDepth();
  
  for (int x = 0; x < kinect2.depthWidth; x++) {
    for (int y = 0; y < kinect2.depthHeight; y++) {
      int offset = x + y * kinect2.depthWidth;
      int d = depth[offset];
      
      if (d > minThresh && d < maxThresh) {
        img.pixels[offset] = color(255, 150, 0);
      } else {
        img.pixels[offset] = color(0);
    }
    }
  }
  
  for (int i = 0; i < particles.length; i++) {
    particles[i].move();
    particles[i].display();
  }
  

  
  //img.updatePixels();
  //PImage img = kinect2.getDepthImage();
  //image(img, 0, 0);
    


}