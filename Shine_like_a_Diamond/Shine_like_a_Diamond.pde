import processing.sound.*;
SoundFile file;



void setup()
{
  size(500, 500);
  background(0);
  frameRate(15);
  smooth(4);
  colorMode(HSB);
  noStroke();
  file = new SoundFile(this, "Diamonds.mp3");
  file.play();
}



int s;
int x = -25;
int y;
int k = 0;
float v;


void draw()
{  




  line(250, 0+x, 250-x, 250);

  line(250, 0+x, 250+x, 250);

  line(250, 500-x, 250-x, 250);

  line(250, 500-x, 250+x, 250);


  stroke(v, 255, 255);

  x = x+25;
  if (x > 251)
  {
    x=0;
     v = random(100,355);
  }
}
