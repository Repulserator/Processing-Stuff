class Bullet
{
  float x;
  float y;
  boolean z;
  float speedo;
  int im;
  float i=6;
  int col;


  Bullet(float xb, float yb, boolean zb, int dir)
  {
    x = xb;
    y = yb;
    z = zb;
    im= dir;
    speed=40;
  }

  void fire()
  {
    if (key==' ')
    {
      if (im==1)
      {
      } else if (im==2)
      {
        y = y + speed;
      } else if (im==3)
      {
        x=x-speed;
      } else if (im==4)
      {
        x=x+speed;
      } else
      {
      }
    }
  }


  void see()
  {
    if (im==1)
    {
      fill(0);
      noStroke();
      rectMode(CENTER);
      rect(x+160, y+60, i, 25);
    } 
    if (im==2)
    {
      fill(0);
      noStroke();
      rectMode(CENTER);
      rect(x+85, y+60, i, 25);
    }
    if (im==3 || im==4)
    {
      fill(0);
      noStroke();
      rectMode(CENTER);
      rect(x+80, y+50, 25, i);
    }
  }

  void blanks()
  {
  }


  //void collision(Bullet b)
  //{
  //  fill(col);
  //  rect(100,100,10,10);
  //  if (x-p.x<b.i+p.rad) 
  //  {
  //    if (y-p.y<b.i+p.rad)
  //    {
  //      col=100;        
  //    }
  //  }
  //}
}
