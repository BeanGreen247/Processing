import processing.opengl.*;
float speed=0.1;
float limit;
float neglimit;
float x = 100;
float y = 100;
float z = 100;
void setup()
{
 size(800, 800, OPENGL);
 smooth();
}
void draw()
{
  x = random(0,255);
  y = random(0,255);
  z = random(0,255);
   if (keyCode==UP)
{
    speed+=1000.001;
    if (speed>=limit)
    {
      speed=limit;
    }
}
 if (keyCode==DOWN)
{
  speed-=1000.001;
  if (speed<=neglimit)
    {
      speed=neglimit;
    }
}
 if (keyPressed) {
    if (key == '+') {
      limit=limit+250.1;
    }
 }
  if (keyPressed) {
    if (key == '-') {
      neglimit=neglimit-250.1;
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

fill(x, y, z);
 pushMatrix();
   rotateX(radians(frameCount*speed*x));
   rotateY(radians(frameCount*speed*y));
   //sphereDetail(30);
   box(z*20, x*20, y*20);
 popMatrix();
 
 fill(y, z, x);
 pushMatrix();
   rotateX(radians(frameCount*1.1*speed*x));
   rotateY(radians(frameCount*1.1*speed*y));
      translate(-180, 0);
   //sphereDetail(15);
   box(y*20, z*20, x*20);
 popMatrix();
 
  fill(z, x, y);
 pushMatrix();
   rotateX(radians(frameCount*1.2*speed*x));
   rotateY(radians(frameCount*1.2*speed*y));
      translate(-270, 0);
   //sphereDetail(15);
   box(x*20, y*20, z*20);
 popMatrix();
}
