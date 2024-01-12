import processing.sound.*; //<>// //<>// //<>// //<>//
import ddf.minim.*;

import processing.video.*;
Capture cam;

Minim minim;
AudioPlayer player;

AudioIn input;
Amplitude analyzer;

boolean stage1, stage2, stage3, stage4, stage5, stage6;


String textA = "Poor, Poor Swordsman";
String textB = "Shackled to a sword, A slave to gold";
String textC = "This, shall be your DEMISE!";
String textD = " ";
String textAW = "Puny creature!, you thought i was the DEVIL";
String textBW = "YOU CAME TO KILL ME?!!";
String textCW = "But deep down we all know that";
String textDW = "YOU are the real vIlLiaN!!!";
String displayed ="";
String displayedd="";
int interval = 4000; // 4s
int time;
PFont font;
float x = 0;
float vol;
int value;
float v;
int i;
int b;
int a;
int c;
int d;
int w;
int f;
int fi;
int ft;
int xx;
int xxx;
int yy;
int ii = 255;
int xstar;
int st5x=1800;
int xgrass;
int ygrass;
int xbrick;
int ybrick;
int smanx;
int smany;
int xvoice;
int m = 0;
int last = 0;
int mm = 0;
int lastt=0;
int py;
PImage chat;
PImage grass;
PImage bricks;
PImage arr;
float s = 1;
float easynow = 0.5;
float tt;
float ttt = 1;
float tttt = 1;
float px;
boolean credits;
byte door;
WallE ww;
//Sneha
float[] starsx = new float[1000];                                                //array of star coordinates
float[] starsy = new float[1000]; 
//Sneha



void setup()
{


  //size(1500, 1000);     //Thats how my screen looks
  fullScreen();
  stroke(255);
  frameRate(60);
  //size(1500, 1000);

  //sneha
  for (int i = 0; i < 900; i=i+1) //  loop for stars
  {
    starsx[i] = random(1000);
    starsy[i] = random(600);
  }


  input = new AudioIn(this, 0);      //The Sound analyser
  input.start();
  analyzer = new Amplitude(this);
  analyzer.input(input);


  font = createFont("DisposableDroidBB", 48);   //Text
  displayed = textA;
  displayedd = textAW;

  time = millis();
  textFont(font);
  fill(255);

  cam = new Capture(this, "pipeline:autovideosrc");   //YO BEAUTIFUL FACE
  cam.start();     


  minim = new Minim(this);
  player = minim.loadFile("codex.mp3");
  player.play();
  stage1 = true;
  stage2 = false;
  stage3 = false;
  stage4 = false;
  stage5 = false;
  stage6 = false;
}


void draw()

{
  if (stage1==true) // Narration and down scaling of character
  {
    stage2=false;
    background(90);

    //trial text
    stroke(255);
    textAlign(LEFT);
    text(displayed, 1100 - textWidth(displayed)/2, 450);

    m = millis()-last;
    if (millis() > last+3000)
    {
      last = millis();
      if (displayed==textA)
      {
        displayed=textB;
      } else if (displayed==textB)
      {
        displayed=textC;
      } else if (displayed==textC)
      {
        displayed=textD;
      }
    }

    pushMatrix();
    scale(s);    
    if (millis()>8000) 
    {
      s = s-0.011;
      if (s<0.51) 
      {        
        s=0.5;
        if (s==0.5)
        {
          stage1=false;
          stage2=true;
        }
      }
    }
    drawDragon();
    popMatrix();
  } else if (stage2==true) 

  {


    background(90);


    arr = loadImage("arr.png");
    pushMatrix();
    image(arr, 1400, 700, 213, 140);
    tint(tt, tt);
    tt=tt+1*tttt;
    println(tttt);
    if (tt > 190) 
    {    
      tttt=-1;
    }
    if (tt<50)
    {
      tttt=1;
    }
    textSize(50);
    fill(255, tt-20);
    text("Use ArrowKeys to Move", 1500, 900);     //CODE TO FADE IN AND OUT

    popMatrix();

    pushMatrix();
    textAlign(CENTER);
    fill(150);
    textSize(100);
    text("Dragon's", 1000, 500);     //Room text
    text("House", 1000, 600);  
    popMatrix();

    scale(1);


    //startstartstart      startstartstart


    pushMatrix();
    translate(xx, yy);    
    scale(0.5);
    drawDragon();
    popMatrix();


    if (w<255)
    {
      w=w+10;
    }
    pushMatrix();                            //Room walls
    scale(1);
    fill(0, 0, 0, w);
    rect(0, 0, 1920, 50);
    rect(1870, 0, 50, 1080);
    rect(0, 1030, 1920, 50);
    popMatrix();




    pushMatrix();
    if (door==1)
    {
      fill(255, 90);
      rect(0, 300, 30, 330);
      fill(78, 46, 40, 255);
      rect(0, 300, 15, 330);
    }

    popMatrix();
    if (xx<-240 && yy>600)                   //Door trigger function
    {
      stage3=true;
      stage2=false;
    }
    pushMatrix();
    fill(255, 90);
    rect(0, 700, 30, 330);
    fill(78, 46, 40, 255);
    rect(0, 700, 15, 330);

    popMatrix();

    if (xx<-230 && yy>100 && yy<300)    //&& xx<1920 && yy<100
    {
      stage2=false;
      stage4=true;
    }
  }



  if (stage3==true) //In progress
  {
    door = 1;

    tint(255, 255);
    background(90);
    //grass = loadImage("gras.jpg");          //grass
    //for (xgrass=0; xgrass<1921; xgrass=xgrass+640)
    //{
    //  for (ygrass=0; ygrass<1101; ygrass=ygrass+100)
    //  {
    //    image(grass, xgrass, ygrass, 640, 100);
    //  }
    //}


    pushMatrix();                           //The chatbox



    if (px > 100 && px <110) 
    {    
      ttt=3;
    } else if (px<1000 && px>980)
    {

      ttt=-3;
    }

    //text(px, 1100, 100);
    //text(ttt, 300, 100);
    px=px+2*ttt;

    textSize(60);
    py=py+1;
    fill(0, py);
    text("You dont have 50$, you Quietly return", 1100, 250);

    fill(0);
    triangle(1700, 840, 1700, 890, 1800, 865);

    if (millis()%5==0.000);
    {
      if (ft==100)
      {
        ft=0;
      } else if (ft==0)
      {
        ft=100;
      }
    }
    //text(px%110, 700, 100);
    //text(ft, 500, 100);

    translate(px, 30);
    chat = loadImage("pixelbud.png");
    textAlign(CORNER);
    smanx=mouseX;
    smany=mouseY;

    fill(0);
    image(chat, 450, 250);                  // yo fella text box
    textSize(35);
    text("PayPal me 50$ to", 495, 300); 
    text("unlock this area", 500, 350); 

    shashankman();

    popMatrix();

    if (yy>599)
    {
      yy=640;
    }
    pushMatrix();                           //recalling the DRagon
    translate(1800, -100);
    translate(xx, 640);    
    scale(0.5);
    drawDragon();
    popMatrix();


    if (xx<1920 && yy>600)
    {
      stage2=true;
      stage3=false;
    }
  }



  if (stage4==true && stage3==false)
  {
    tint(255, 255);
    background(90);
    textAlign(CENTER);
    fill(255);
    textSize(300);
    text("SHOUT RUN", 1000, 300);
    bricks = loadImage("bricks.png");
    for (xbrick=0; xbrick<1900; xbrick=xbrick+400)
    {
      for (ybrick=0; ybrick<1800; ybrick=ybrick+100)
      {
        image(bricks, xbrick, ybrick+900, 400, 100);
      }
    }
    // Get the overall volume (between 0 and 1.0)
    float vol = analyzer.analyze();
    vol=vol*2000;
    pushMatrix();
    translate(st5x, 500);
    println(st5x);
    translate(xvoice, 0);
    scale(0.5);
    drawDragon();
    scale(1);
    popMatrix();
    if (vol>10.0)
    {
      st5x=st5x-35;
    } else if (vol>15.0)
    {
      st5x=st5x-300;
    } else
    {
      st5x=st5x;
    }

    if (st5x<0)
    {
      stage5=true;
      stage4=false;
    }
  }


  if (stage5==true && stage4==false)
  {
    if (stage5==true && f==0)
    {
      xx=-80;
      f=1;
    }
    println("YO");
    tint(255, 255);
    background(90);
    pushMatrix();
    noStroke();
    scale(2);
    Sneha(); 

    popMatrix();
    pushMatrix();
    pushMatrix();
    fill(34, 139, 34);
    rect(0, 900, width, 300);
    popMatrix();
    translate(1800, 500);
    translate(xstar, 0);
    println(xx);
    scale(0.5);
    drawDragon();
    scale(1);



    if (xx<-600)
    {
      stage6=true;
      stage5=false;
    }

    popMatrix();
  }

  if (stage6==true && stage4==false && stage5==false)
  {

    background(130, 0, 0);  
  
    scale(1);   
    rectMode(CENTER);
    rect(0, height/2, 75, height);
    rect(width/2, 0, width, 75);
    rect(width, height/2, 75, height);
    rect(width/2, height, width, 75);




    pushMatrix();

    textSize(45);
    fill(255);

    font = createFont("DisposableDroidBB", 48);   //Text
    textFont(font);    
    text(displayedd, 1200 - textWidth(displayed)/2, 300);

    ii=ii+1;


    if (displayedd==textAW && ii>500)
    {
      displayedd=textBW;
      ii=0;
    } else if (displayedd==textBW && ii>400)
    {
      ii=0;
      displayedd=textCW;
    } else if (displayedd==textCW && ii>300)
    {       

      image(cam, 600, 260);
      textSize(50);
      text("YOU are the real vIlLiaN!!!", 900, 800);
    }
    
    fill(255,60);
    text("Move and click mouse", 300, 100);
    
    fill(255);
    textSize(30);
    text("Press E to finish", 1600, 1000);

    popMatrix();
    
    
    pushMatrix();               //Bhagad
    translate(-100, -100);
    rectMode(CORNER);
    scale(2);
    ww =new WallE();
    ww.walle();
    popMatrix();
    
    pushMatrix();               //Dragon
    scale(0.5);
    translate(xx, yy);
    translate(2300, 700);
    drawDragon();
    popMatrix();
    
    
    
  }

  if (cam.available())
  {
    cam.read();
  }

  if (credits==true)
  { 
    translate(50, 0);
    background(0);
    fill(255);
    xxx=xxx+2;
    textSize(65);
    text("BY Repulserator", 900, 800-xxx);
    textSize(50);
    text("To all those who helped me :)", 900, 900-xxx);
    text("Sir Ritu, Helios, Pink Panther", 900, 950-xxx);
    text("Athena, Rudra, Kratos ", 900, 1000-xxx);
    text("The faculty of SOD and all my peers (and you kind stranger for taking an interest in my code)", 900, 1050-xxx);
    textSize(60);
    text("Thankyou", 900, 1130-xxx);
    println(xxx);
    //text("", 900, 1020-xxx);
    //text("", 900, 1050-xxx);
  }

  if (xxx>1100)
  {
    exit();
  }
}










void keyPressed() 
{
  {

    if (xx>1420 && stage2==true)
    {
      xx=1420;
    }
    if (yy>=640 && stage2==true)
    {
      yy=640;
    }
    if (yy<-19 && stage2==true)
    {
      yy=20;
    }
  }

  {
    if (stage6==true)
    {
      xx=0;
      yy=0;
    }
  }

  if (key==CODED)
  {
    if (keyCode==UP)
    {
      yy=yy-20;
    }

    if (keyCode==DOWN)
    {
      yy=yy+20;
    }
    if (keyCode==LEFT)
    {
      xx=xx-20+fi;
      xstar=xstar-20;
      if (stage5==true)
      {
        fi=15;
      }
    }
    if (keyCode==RIGHT)
    {
      xx=xx+20+fi;
      xstar=xstar+20;
      if (stage5==true)
      {
        fi=15;
      }
    }
    println(xx, yy);
  }



  if (key== 's' || key == 'S') //z&& keyCode == CONTROL)
  {
    cam.save(frameCount+".png");
    save(frameCount+"bhavansgotcha.png");
  }  


  if (key== 'e' || key == 'E') 
  {
    //ROLL IT DOWN
    credits=true;
  }
}

void captureEvent(Capture cam) 
{ 
  cam.read();
}
