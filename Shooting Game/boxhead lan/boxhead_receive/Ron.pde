//theDude
class Ron
{
  PImage ronf;
  PImage ronb;
  PImage ronl;
  PImage ronr;
  float x, y, z;
  int b;
  int im;

  Ron(float xd, float yd, int il)
  {
    x=xd;
    y=yd;
    z=il;
  }

  void show()
  {

    ronf = loadImage("ronf.png");
    ronb = loadImage("ronb.png");
    ronl = loadImage("ronl.png");
    ronr = loadImage("ronr.png");





    if (z==1)
    {
      image(ronb, x+10, y+10, 245, 175);
    } 
    if (z==2)
    { 
      image(ronf, x-10, y-10, 245, 175);
    } 
    if (z==3)
    {
      image(ronl, x, y, 245, 175);
    } 
    if (z==4)
    {
      image(ronr, x, y, 245, 175);
    }


    if (key==CODED || key==' ')
    {
      if (z==1)
      {
        image(ronb, x+10, y+10, 245, 175);
      }
      if (z==2)
      {
        image(ronf, x-10, y-10, 245, 175);
      }
      if (z==3)
      {
        image(ronl, x, y, 245, 175);
      }
      if (z==4)
      {
        image(ronr, x, y, 245, 175);
      }
    }
  }
}
