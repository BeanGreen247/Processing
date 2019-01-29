int OFF_MAX = 100;

void setup() {
  size(500, 500, P3D);
  smooth();
}

void draw() {
  //noStroke();
  background(0);
   //lights();
  translate(250 , 250 );
  rotateX(frameCount * .01);
  rotateY(frameCount * .01);
  rotateZ(frameCount * .01);
  
  for (int xo = -OFF_MAX; xo <= OFF_MAX; xo +=  25) {
    for (int yo = -OFF_MAX; yo <= OFF_MAX; yo +=  25) {
      for (int zo = -OFF_MAX; zo <= OFF_MAX; zo +=  25) {
        pushMatrix();
        translate(xo, yo, zo);
        fill(colorFromOffset(xo), colorFromOffset(yo), 
          colorFromOffset(zo));
        box((float) (50+(Math.sin(frameCount)/20) ));
        popMatrix();
      }
    }
  }
}

int colorFromOffset(int offset) {
  return (int) ((offset + OFF_MAX) / (2.0 * OFF_MAX) *255);
}
