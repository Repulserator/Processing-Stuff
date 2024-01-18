//theDude
class Ron
{
  PImage ronf;
  PImage ronb;
  PImage ronl;
  PImage ronr;
  float x, y;
  int b;
  int im;

  Ron(float xd, float yd, int il)
  {
    x=xd;
    y=yd;
    im=il;
  }

  void show()
  {

    ronf = loadImage("ronf.png");
    ronb = loadImage("ronb.png");
    ronl = loadImage("ronl.png");
    ronr = loadImage("ronr.png");




    {
      
      if (key==CODED)
      {

        if (keyCode==UP)
        {
          im=1;
          image(ronb, x+10, y+10, 245, 175);
        } 
        else if (keyCode==DOWN)
        {
          im=2;
          image(ronf, x-10, y-10, 245, 175);
        } 
        else if (keyCode==LEFT)
        {
          im=3;
          image(ronl, x, y, 245, 175);
        } 
        else if (keyCode==RIGHT)
        {
          im=4;
          image(ronr, x, y, 245, 175);
        }
      }

      if (key==CODED || key==' ')
      {
        if (im==1)
        {
          image(ronb, x+10, y+10, 245, 175);
        }
        if (im==2)
        {
          image(ronf, x-10, y-10, 245, 175);
        }
        if (im==3)
        {
          image(ronl, x, y, 245, 175);
        }
        if (im==4)
        {
          image(ronr, x, y, 245, 175);
        }
      }
      else
      {
        image(ronr,x, y, 245, 175);
      }
    }
  }
}
