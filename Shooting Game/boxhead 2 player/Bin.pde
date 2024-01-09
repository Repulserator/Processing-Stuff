//theDude
class bin
{
  PImage binf;
  PImage binb;
  PImage binl;
  PImage binr;
  float x, y;
  int b;
  int im;
  int dir;
  int speed;

  bin(float xd, float yd, int il)
  {
    x=xd;
    y=yd;
    im=il;
  }

  void show()
  {

    binf = loadImage("binf.png");
    binb = loadImage("binb.png");
    binl = loadImage("binl.png");
    binr = loadImage("binr.png");

    {
    }
  }

  void update()
  {
    if (dir==0)
    {
      y=y-speed;
      image(binb, x+10, y+10, 245, 175);
    } 
    else if (dir==1)
    {
      x=x+speed;
      image(binr, x+10, y+10, 245, 175);
    } 
    else if (dir==2)
    {
      image(binf, x+10, y+10, 245, 175);
    } 
    else if (dir==3)
    {
      image(binl, x+10, y+10, 245, 175);
    }
  }
}
