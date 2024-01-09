import processing.net.*;

Bullet b;
Bullet[] Bullet = new Bullet[70];
int rd = 0;
int tt; 
boolean what;


boolean up, down, left, right;
boolean iu, id, il, ir;


Client cl;
int dataIn;
int[] arr = new int[7];
String input;




Ron r;
int x = width/10;
int y = 100;
boolean z;
int c;
int speed = 10;
int m;
int pX, pY;
int face, xx, yy, t;



void setup()
{

  size(600, 600);                                   //Size duh
  frameRate(60);    //hmm



  cl = new Client(this, "192.168.1.222", 8080);
}



void draw()
{
  background(100);


  r = new Ron(arr[0], arr[1], arr[2]);                                                    //Creating marr[1] character                                                        //The background
  r.show();                                                             //All the movement magic

  //BULLET
  b = new Bullet(arr[2], arr[0], arr[1]);
  

    if (arr[3]==1)
  {
    Bullet[rd] = new Bullet(arr[2],arr[0],arr[3]);
    rd= rd+1;   
  }
  if(arr[3]==0);
  {
    Bullet[rd] = new Bullet(arr[2],arr[0],arr[3]);
  }
  
  if (rd>=0 && rd<=7) 
  {
    for (int i = 0; i < rd; i++)
    {             //darts
      Bullet[i].fire();
      Bullet[i].see();
    }
  } else
  {
  }





  if (cl.available() > 0) 
  { 
    input = cl.readString();
    arr = int(split(input, ','));  // Split values into an arraarr[1]    
    println(arr[3]);
  }
}
