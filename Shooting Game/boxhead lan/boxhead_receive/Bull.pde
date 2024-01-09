class Bullet
{
  float x;
  float y;
  int dir;
  boolean z;
  float speed;
  int t;


  Bullet(int z,int xx,int yy)
  {
    dir=z;
    x=xx;
    y=yy;
    speed=40;
    
  }

  void fire()
  {
 
    if (dir==1)
    {
      y = y - speed;
    }
    if (dir==2)
    {
      y = y + speed;
    }
    if (dir==3)
    {
    }
    if (dir==4)
    {
      x=x+speed;
    } else
    {
    }
  }


  void see()
  {

    if (dir==1 || dir==2)
    {
      fill(0);
      noStroke();
      rectMode(CENTER);
      rect(x+160, y+60, 6, 25);
    } else
    {
      fill(0);
      noStroke();
      rectMode(CENTER);
      rect(x+80, y+50, 25, 6);
    }
  }
}
