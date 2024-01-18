void setup() //<>//
{
  size(1000, 1000);
}

int total=10;
car[] bunch = new car[total];
int carno = 0;
boolean it=false;
boolean man=false;

void draw()
{
  background(100);
  if (it)
  {
    for (int i = 0; i<carno; i++)
    {      
      bunch[i].show();
    }
  }
  if (man==true)
  {fill(255,10,10);
    textSize(30);
    text("Big Ambitions, A small bank account", 100, 100);
  }
}




void mouseClicked()
{
  if (carno<total)
  {
    bunch[carno] = new car(mouseX, mouseY);
    it = true;
    carno++;
  } else
  {
    man=true;
  }
}
