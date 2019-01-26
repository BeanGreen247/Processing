import joons.JoonsRenderer; //library used https://github.com/joonhyublee/joons-renderer

JoonsRenderer jr;
void keyPressed() {
  if (key=='r'||key=='R') jr.render(); //Press 'r' key to start rendering.
}
//camera declarations
float eyeX = 0;
float eyeY = 0;
float eyeZ = 0;
float centerX = -0.23;
float centerY = 0.2;
float centerZ = -1.2;
float upX = 0;
float upY = 0.5;
float upZ = 0;
float fov = PI / 4; 
float aspect = 4/3f;  
float zNear = 5;
float zFar = 10000;

void setup() {
  size(800, 600, P3D);
  jr = new JoonsRenderer(this);
  jr.setSampler("ipr"); 
  jr.setSizeMultiplier(1); 
  jr.setAA(-2, 0, 1); 
  jr.setCaustics(1); 
}

void draw() {
  jr.beginRecord(); 
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);
  perspective(fov, aspect, zNear, zFar);

  jr.background(255, 255, 255); 
  jr.background("gi_instant"); 
  //jr.background("gi_ambient_occlusion"); 

  pushMatrix();
  translate(0, 0, -120);
  jr.background("cornell_box", 115, 115, 115); 
  popMatrix();

  pushMatrix();
  translate(-40, 20, -140);
  rotateY(-PI/8);

  jr.fill("light", 5, 5, 5);
  sphere(13);
  translate(27, 0, 0);
   
  jr.fill("mirror", 255, 255, 255);
  sphere(13);
  translate(27, 0, 0);


  jr.fill("glass", 255, 255, 255);
  sphere(13);
  translate(27, 0, 0);

  popMatrix();

  jr.endRecord(); 
  jr.displayRendered(true); 
}
