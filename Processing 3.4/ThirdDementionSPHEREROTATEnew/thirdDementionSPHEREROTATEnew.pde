import processing.opengl.*;
float speed=0.1;
float limit;
float neglimit;
void setup()
{
 size(800, 800, OPENGL);
 smooth();
}
void draw()
{
   if (keyCode==UP)
{
    speed+=0.001;
    if (speed>=limit)
    {
      speed=limit;
    }
}
 if (keyCode==DOWN)
{
  speed-=0.001;
  if (speed<=neglimit)
    {
      speed=neglimit;
    }
}
 if (keyPressed) {
    if (key == '+') {
      limit=limit+0.1;
    }
 }
  if (keyPressed) {
    if (key == '-') {
      neglimit=neglimit-0.1;
    }
 }
 if (keyPressed) {
    if (key == 'r' || key == 'R') {
      limit=0;
      neglimit=0;
    }
 }
 background(0);
  //text
  fill(255);
 text("speed: "+speed,50,50);
 textSize(20);
 text("speed+=UP",580,75);
 textSize(20);
 text("speed-=DOWN",580,100);
 textSize(20);
  text("speed+_limit= "+limit,50,100);
 textSize(20);
 text("speed-_limit= "+neglimit,50,125);
 textSize(20);
 text("STOP=ANY KEY",580,50);
 textSize(20);
 text("speed+_limit= + ",580,125);
 textSize(20);
 text("speed-_limit= - ",580,150);
 textSize(20);
  text("speed_limit_reset= R ",580,175);
 textSize(20);
 lights();
 //noStroke();
 
 translate(width/2, height/2);

fill(255, 0, 0);
 pushMatrix();
   rotateX(radians(frameCount*speed));
   rotateY(radians(frameCount*speed));
   sphereDetail(30);
   sphere(125);
 popMatrix();
 
 fill(0, 255, 0);
 pushMatrix();
   rotateX(radians(frameCount*1.1*speed));
   rotateY(radians(frameCount*1.1*speed));
      translate(-180, 0);
   sphereDetail(15);
   sphere(50);
 popMatrix();
 
  fill(0, 0, 255);
 pushMatrix();
   rotateX(radians(frameCount*1.2*speed));
   rotateY(radians(frameCount*1.2*speed));
      translate(-270, 0);
   sphereDetail(15);
   sphere(25);
 popMatrix();
}
