void setup()
{
  size(500, 500);
  frameRate(4);
}
PFont a;
float x;


void draw()
{
  //background(255);

  x = random(255);
println(mouseX);
println(mouseY);

  fill(0);
  if (x>200 && x<256)
  {
    String A = "Fellas too high";
    text(A, mouseX, mouseY);
  } else if (x>150 && x<201)
  {
    String B = "Fellas too low";
    text(B, mouseX, mouseY);
  } else if (x>100 && x<151)
  {
    String D = "Go Higher";
    text(D, mouseX, mouseY);
  } else  {
    String C = "Bro What?";
    text(C, mouseX, mouseY);
  }
}
