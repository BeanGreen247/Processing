PImage img;
int rad = 45;        
float xpos, ypos;       
float xspeed = 2.8;  
float yspeed = 2.2;  
int xdirection = 1;  
int ydirection = 1; 

void setup() 
{
  size(640, 640, OPENGL);
  img=loadImage("dvdlogo.png");
  noStroke();
  //noFill();
  frameRate(25);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/4;
}

void draw() 
{
  imageMode(CENTER);
  rectMode(CENTER);
  background(0);
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );  
  if (xpos > width-rad) {
    fill(255, 255, 0);
    xdirection *= -1;
  }
    if (xpos < rad) {
    fill(204, 0, 153);
      xdirection *= -1;
  }
  if (ypos > height-rad/2) {
    fill(255, 0, 102);
    ydirection *= -1;
  }
    if (ypos < rad/2) {
    fill(255, 153, 0);
    ydirection *= -1;
  }
  ellipse(xpos, ypos, rad, rad/2);
  createShape(ELLIPSE,xpos,ypos,rad,rad/2);
  image(img,xpos,ypos);
}
