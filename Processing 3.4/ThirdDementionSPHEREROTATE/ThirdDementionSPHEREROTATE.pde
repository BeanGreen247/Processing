import processing.opengl.*;

void setup()
{
 size(800, 800, OPENGL);
 smooth();
}

void draw()
{
 background(255);
 lights();
 //noStroke();
 
 translate(width/2, height/2);

fill(255, 0, 0);
 pushMatrix();
   rotateX(radians(frameCount*0.5));
   rotateY(radians(frameCount*0.5));
   sphereDetail(30);
   sphere(125);
 popMatrix();
 
 fill(0, 255, 0);
 pushMatrix();
   rotateX(radians(frameCount*1.0));
   rotateY(radians(frameCount*1.0));
      translate(-180, 0);
   sphereDetail(15);
   sphere(50);
 popMatrix();
 
  fill(0, 0, 255);
 pushMatrix();
   rotateX(radians(frameCount*2.0));
   rotateY(radians(frameCount*2.0));
      translate(-270, 0);
   sphereDetail(15);
   sphere(25);
 popMatrix();
}
