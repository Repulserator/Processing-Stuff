//2 player version

//BULLET
Bullet b;
Bullet[] Bullet = new Bullet[70];
int rd = 0;

int time;
int gap = 2000; //2s
int t;
int lastTimeCheck;
int timeIntervalFlag = 3000;
//BULLET

boolean up, down, left, right;
int i1, i2, i3, i4;


//RON
Ron r;
int x = width/10;
int y = 100;
boolean z;
int c;
int speed = 10;
int face;
//RON

//bin
bin n;
int xb = width/10;
int yb= 100;
//bin




void setup()
{

  size(600, 600);                                   //Size duh
  frameRate(60);    //hmm
  lastTimeCheck = millis();
  time = millis();
}





void draw()
{
  background(100);    //The background

  //RON                                                   //Creating my character 
  r = new Ron(x, y, i1);
  r.show();      
  face=i1;
  //RON

  //BIN
  n = new bin(xb, yb, i2);
  n.show();


  if (key=='w') 
  {
    n.dir=0;
  } 
  else if (key=='d') 
  {
    n.dir=1;
  } 
  else if (key=='s')
  {
    n.dir=2;
  } 
  else if (key=='a')
  {
    n.dir=3;
  }
  n.update();
  //BIN


  //BULLET
  b = new Bullet(x, y, z, +i1);
  if (rd>7)
  {
    text("Out of ammo", width/2, height/2);
    if ( millis() > lastTimeCheck + timeIntervalFlag ) {
      lastTimeCheck = millis();
      rd=0;
      println( "something awesome happens here" );
    }
  }

  if (rd>=0 && rd<=7) 
  {
    for (int i = 0; i < rd; i++)
    {                //darts
      Bullet[i].fire();
      Bullet[i].see();
    }
  } else
  {
  }

  if (rd>7)
  {
    text("Out of ammo", width/2, height/2);
    b.blanks();
  }
  if (rd==7)
  {
    text("Its reload time", width/2, height/2);
    //rd=0;
  }

  //BULLET
}



void keyPressed() 
{
  {
    if (key==CODED)
    {
      if (keyCode==UP)
      {
        i1=1;
        y=y-speed;
      }
      if (keyCode==DOWN)
      {
        i1=2;
        y=y+speed;
      }
      if (keyCode==LEFT)
      {
        i1=3;
        x=x-speed;
      }
      if (keyCode==RIGHT)
      {
        i1=4;
        x=x+speed;
      } else
      {
        // i1=i1;
      }
    }
    if (key==' ')
    {
      Bullet[rd] = new Bullet(x, y, z, i1);
      rd= rd+1;
      z=true;
    }
  }

  if (key=='w') 
  {
    yb = yb - speed;
  } else if (key=='d') 
  {
    xb = xb + speed;
  } 
  else if (key=='s')
  {
    yb = yb + speed;
    
  } else if (key=='a')
  {
    xb = xb - speed;
  }
}
