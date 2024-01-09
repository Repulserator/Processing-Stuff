// Run this program only in the Java mode inside the IDE,
// not on Processing.js (web mode)!!

import processing.video.*;
Capture cam;

import ddf.minim.*; 
Minim minim;
AudioPlayer player;


void setup() 
{
  size(1500, 1000);
  //cam = new Capture(this, 1280, 720, 10);

  cam = new Capture(this, "pipeline:autovideosrc");
  cam.start();     

  minim = new Minim(this);
  player = minim.loadFile("sfroma.mp3");
  player.play();
}

int w=0;
int r;
int g;
int b;
float x;
float y;

void draw()
{
  background(155);

  if (cam.available())
  {
    cam.read();
  }

  image(cam, 0, 0);





  pushMatrix();
  scale(0.235);
  for (x=0; x<6401; x=x+640)
  {
    for (y=0; y<4801; y=y+480)
    {
      image(cam, x, y);
    }
  }
  popMatrix();


  fill(r, g, b, w);
  rect(0, 0, 1500, 1000);


  scale(1);
  image(cam, 430, 260);
  pushMatrix();
  fill(255, 0, 0);
  textSize(20);  
  text("whats good?", 740, 700);
  popMatrix();
}

void captureEvent(Capture cam) 
{ 
  cam.read();
}


void keyPressed()
{
  if (key == 'r' || key == 'R')
  {  
    r = 255;
    g=0;
    b=0;
    w=80;
  }
  if (key== 'g' || key == 'G')
  {
    r=0;
    g=255;
    b=0;
    w=80;
  }
  if (key == 'b' || key == 'B')
  {
    r=0;
    g=0;
    b=255;
    w=80;
  }
  if (keyCode==' ')
  {
    r=0;
    g=0;
    b=0;
    w=0;
  }
  
    if (key== 's' || key == 'S') //z&& keyCode == CONTROL)
    {
      cam.save(frameCount+".png");
      save(frameCount+"gotcha.png");
    }
  
}
