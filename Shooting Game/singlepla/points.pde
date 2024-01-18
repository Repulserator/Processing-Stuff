class rects
{
  float x;
  float y;
  int col;
  int rad = 50;


  void condition()
  {           
    x=random(width);
    y=random(height);
  }

  void appear()
  {
    fill(255);
    rect(x, y, rad, rad);
  }


  void checkCollision(Bullet b) {
    fill(col);
    rect(100,100,10,10);
    if (Math.abs(x-b.x)<rad+b.i)
    {
      if (Math.abs(y-p.y)<rad+b.i) 
      {
        col=100;
      }
    }
  }
}
