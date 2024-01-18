void setup()
{
  size(1000,1000);
  background(255);
  smooth(3);
  frameRate(60);

}

void draw()
{
  
  int z = mouseX-pmouseX;
  z = abs(z);
  if(z>50)
{
  z=50;
}
  stroke(0);
  strokeWeight(z);
  line(pmouseX,pmouseY,mouseX,mouseY);


}
