
import ddf.minim.*;
PFont mono;
Minim song;
AudioPlayer player;


void setup()
{
  //frameRate(10);
  song = new Minim(this);
  player = song.loadFile("hbd.mp3");
  //player.play();
  mono = createFont("ka1.ttf", 170);
  //size(1300, 600);
  fullScreen();
  colorMode(HSB);
}




//==================== Your Concern =====================//
String myText = "Y O U"; //Change to whatever name you wish John,Doe etc
int xCoordinate = 710;   //Incase changing the name messes up the position, fix it as you wish
int yCoordinate = 890;
//=======================================================//




boolean lordritu = false;   //:)
int x, y, z, a, b, c, d, e, f, g, h, i, j, k, l ;
float p=255;
float m=0;
float n=0;
float o=0;
int time;
PFont font;
PFont fly;
int interval = 200;


void draw()
{
  
  backgrounth();

  
  pushMatrix(); 
  translate(320,260);
  translate(240, 0); 
  happy(); 
  popMatrix(); 


  pushMatrix(); 
  translate(0, 0); 
  translate(320,260);
  birthday(); 
  popMatrix(); 
  

  p=p-0.6; 
  //p= constrain(p,260,70);

  pushMatrix(); 
  if (p<10 && lordritu==false)
  {
    fill(255); 
    textSize(40); 
    text("Press Spacebar", 800, 900);

  }
  popMatrix();
  
  
  pushMatrix();
  if(lordritu==true)
  {  
  //font = loadFont("FuturaNDAlt-Bold-48.vlw");
  textFont(mono);
  text(myText, xCoordinate, yCoordinate);
  }
  popMatrix();
}


void hline(int c, int d)
{
  for (x=0; x<121; x=x+20)
  {
    fill(0); 
    if (lordritu==true) 
    {     
      fill(random(100, 400), 500, 409);
    }
    rect(x+c, d, 20, 20);
  }
}

void vline(int e, int f)
{
  for (x=0; x<121; x=x+20)
  {
    fill(0); 
    if (lordritu==true)
    {      
      fill(random(100, 400), 500, 409);
    }
    rect(e, x+f, 20, 20);
  }
}

void hlines(int g, int h)
{
  for (x=0; x<61; x=x+20)
  {
    fill(0); 
    if (lordritu==true) 
    {     
      fill(random(100, 400), 500, 409);
    }
    rect(x+g, h, 20, 20);
  }
}

void vlines(int i, int j)
{
  for (x=0; x<61; x=x+20)
  {
    fill(0); 
    if (lordritu==true)
    {
      fill(random(100, 400), 500, 409);
    }
    rect(i, x+j, 20, 20);
  }
}



void H()
{
  vline(100, 100); 
  hlines(100, 160); 
  vline(180, 100);
}

void A()
{
  vline(240, 100); 
  hlines(240, 100); 
  hlines(240, 160); 
  vline(320, 100);
}

void P()
{
  vline(380, 100); 
  hlines(380, 100); 
  hlines(380, 160); 
  vlines(440, 100);
}

void P2()
{
  pushMatrix(); 
  translate(120, 0); 
  P(); 
  popMatrix();
}


void Y()
{
  vlines(620, 100); 
  hlines(620, 160); 
  vline(700, 100); 
  hlines(620, 220);
}

void happy()
{
  H(); 
  A(); 
  P(); 
  P2(); 
  Y();
}

void B()
{
  vline(100, 300); 
  vline(180, 300); 
  hlines(100, 300); 
  hlines(100, 360); 
  hlines(100, 420);
}

void I()
{
  hlines(240, 300); 
  rect(320, 300, 20, 20); 
  rect(320, 420, 20, 20); 
  vline(280, 300); 
  hlines(240, 420);
}

void R()
{
  vline(380, 300); 
  hlines(380, 300); 
  hlines(380, 360); 
  vlines(460, 300); 
  rect(400, 360, 20, 20); 
  rect(420, 380, 20, 20); 
  rect(440, 400, 20, 20); 
  rect(460, 420, 20, 20);
}

void T()
{
  hlines(520, 300); 
  rect(600, 300, 20, 20); 
  vline(560, 300);
}

void H2()
{
  pushMatrix(); 

  translate(560, 200); 
  H(); 

  popMatrix();
}

void D()
{
  vline(800, 300); 
  hlines(800, 300); 
  hlines(800, 420); 
  vline(880, 300);
}

void A2()
{
  pushMatrix(); 
  translate(700, 200); 
  A(); 
  popMatrix();
}

void Y2()
{
  pushMatrix(); 
  translate(460, 200); 
  Y(); 
  popMatrix();
}

void birthday()
{
  B(); 
  I(); 
  R(); 
  T(); 
  H2(); 
  D(); 
  A2(); 
  Y2();
}


void keyPressed()
{
  if (keyCode == ' ')
  {
    player.play(); 
    lordritu=true;
  }
}
