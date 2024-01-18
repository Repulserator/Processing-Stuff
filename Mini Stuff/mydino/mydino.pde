void setup()
{
size(1000,1000);

}

 float x = 0;
 int value;
 int v;

void draw()

{
  
  if (value < 255) {
    x = 0;
{
 
  background(255);
  pushMatrix();
  fill(value);
  stroke(0);
  rect(500+mouseX-500, 100+mouseY-250, 100, 50);

  fill(mouseX,0,0);
  noStroke();
  ellipse(575+mouseX-500, 115+mouseY-250, 20, 20);

  fill(value);
  stroke(0);
  quad(200+mouseX-500, 400+mouseY-250, 500+mouseX-500, 100+mouseY-250, 500+mouseX-500, 150+mouseY-250, 300+mouseX-500, 450+mouseY-250);

  fill(value);
  stroke(0);
  triangle(100+mouseX-500, 600+mouseY-250, 200+mouseX-500, 400+mouseY-250, 200+mouseX-500, 500+mouseY-250);

  fill(value);
  noStroke();
  triangle(200+mouseX-500, 400+mouseY-250, 300+mouseX-500, 450+mouseY-250, 200+mouseX-500, 500+mouseY-250);

  fill(value);
  stroke(0);
  rect(200+pmouseX-500, 500+pmouseY-250, 100, 50);

  fill(value);
  noStroke();
  triangle(200+mouseX-500, 500+mouseY-250, 300+mouseX-500, 450+mouseY-250, 300+mouseX-500, 500+mouseY-250);

  fill(value);
  stroke(0);
  quad(434+mouseX-500, 250+mouseY-250, 540+mouseX-500, 250+mouseY-250, 525+mouseX-500, 300+mouseY-250, 400+mouseX-500, 300+mouseY-250);

  fill(value);
  stroke(0);
  quad(425+mouseX-500, 300+mouseY-250, 540+mouseX-500, 250+mouseY-250, 525+mouseX-500, 300+mouseY-250, 400+mouseX-500, 300+mouseY-250);

  fill(value);
  stroke(0);
  triangle(300+mouseX-500, 300+mouseY-250, 300+mouseX-500, 200+mouseY-250, 400+mouseX-500, 200+mouseY-250);

  fill(value);
  stroke(0);
  triangle(200+mouseX-500, 300+mouseY-250, 200+mouseX-500, 400+mouseY-250, 300+mouseX-500, 300+mouseY-250);
  popMatrix();
  
  fill(0);
  rect(200+random(1000),800,100,100);
  rect(100+v,700,100,100);
   v=v+2;
   if(v==950)
   {
     v=0;
   }
}
  }
}

 
  


void mousePressed() 
{
 value = value +10;
}

void mouseReleased()
{
  
}

void mouseClicked()
{
  println("take me to your leadeeeeeerr!!!");
}
