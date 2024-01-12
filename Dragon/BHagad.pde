class WallE
{

  int a=15;
  int b=1500;
  int c=150;
  int d=30;
  int e=130;
  int f= 200;
  int g=20;
  int h=25;
  int i=255;
  int j=0;
  int k= 100;
  int l= 40;
  int m=225;
  int n= 80;
  int o=3;
  int p=35;
  int q=50;
  int r=90;
  int s=120;
  int t=56;
  int u=5;
  int v=50;
  int w=53;
  int x=70;
  int y=4;
  int z=10;
  int ab=180;
  int cd;


  void walle()
  {
    fill(j, a);
    rect(j, j, width, height);
    fill(i);
    { 
      strokeWeight(u);
      stroke(j);

      stroke(n);
      fill(m);
      strokeWeight(u);
      rect(mouseX+w, mouseY+a, v, v);

      //body
      fill(f, ab, z);
      fill(m);
      rect(mouseX+d, mouseY+d, k, k);
      fill(m);
      strokeWeight(u); 

      //legs
      rect(pmouseX+d, pmouseY+e, l, g);
      rect(pmouseX+r, pmouseY+e, l, g);

      //left hand
      stroke(n);
      strokeWeight(u);
      line(mouseX+d, mouseY+d, z+mouseX, d+mouseY);
      line(mouseX+z, mouseY+d, d+mouseX, k+mouseY);

      //right hand
      stroke(n);
      strokeJoin(y);
      line(mouseX+e, mouseY+d, c+mouseX, d+mouseY);
      line(mouseX+c, mouseY+d, e+mouseX, k+mouseY);

      //eyes
      stroke(255, c, k);
      ellipse(mouseX+x, mouseY+h, u, u);
      ellipse(mouseX+r, mouseY+h, u, u);

      //antennas

      stroke(q, c, k);
      strokeWeight(u);
      line(mouseX+k, mouseY+a, s+mouseX, j+mouseY);
      line(mouseX+t, mouseY+a, p+mouseX, j+mouseY);
    }

    if (mousePressed)
    {

      //moving legs
      rect(pmouseX+d, pmouseY+e, l, g);
      rect(pmouseX+r, pmouseY+e, l, g);

      for (cd=100; cd<105; cd++)
      {
        //Lit antennas
        stroke(random(i), random(i), random(i));
        strokeWeight(u);
        line(mouseX+k, mouseY+a, s+mouseX, j+mouseY);
        line(mouseX+t, mouseY+a, p+mouseX, j+mouseY);
        p++;
        s=s+3;
      }

      //Lit eyes
      stroke(mouseX, random(i), random(i));
      ellipse(mouseX+x, mouseY+h, u, u);
      ellipse(mouseX+r, mouseY+h, u, u);

      //Signal Lines
      stroke(j, random(i), j);
      strokeWeight(1);
      line(p+mouseX, j+mouseY, random(b), random(b));
      line(s+mouseX, j+mouseY, random(b), random(b));

      //stars
      fill(j, o);
      rect(j, j, width, height);
      fill(i);
      ellipse(random(width), random(height), o, o);
      ellipse(random(width), random(height), o, o);
      ellipse(random(width), random(height), o, o);
      ellipse(random(width), random(height), o, o);

      //text
      PFont F = createFont("HP Simplified", a);
      String str = "REQUISCAT";
      String str1 = "IN PACE";
      
      fill(j);
      textSize(a);
      textFont(F);
      text(str, mouseX+q+30, mouseY+r);
      text(str1, mouseX+q+30, mouseY+r+25);

    }
  }
}
