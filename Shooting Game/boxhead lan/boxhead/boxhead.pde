import processing.net.*;

Bullet b;
Bullet[] Bullet = new Bullet[70];
int rd = 0;

int time;
int gap = 2000; //2s
int t;
int lastTimeCheck;
int timeIntervalFlag = 3000;

boolean up, down, left, right;
int i1, i2, i3, i4;


Server servo;
int val = 30;
int dataIn;
int[] arr = new int[3];
String input;
int bsend;




Ron r;
int x = width/10;
int y = 100;
boolean z;
int c;
int speed = 10;
int face;


void setup()
{

  size(600, 600);                                   //Size duh
  frameRate(60);    //hmm
  lastTimeCheck = millis();
  time = millis();


  servo = new Server(this, 8080);
}



void draw()
{
  //RON
  r = new Ron(x, y, i1);                                                    //Creating my character
  background(100);                                                      //The background
  r.show();      
  face=i1;
  //RON


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







  //All the movement magic
  servo.write(x+","+y+","+i1+","+bsend);            //KTK KLACK AND SEND!
  println(face);
  text(bsend, 50, 50);
}


void keyPressed() 
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
    bsend=1;
  }
}


void keyReleased()
{
  if (key==' ')
  {
    bsend=0;
  }
}
