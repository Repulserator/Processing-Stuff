PImage img;  // Declare a variable of type PImage
int p=100;
int k=10;
float f;

//int z=0;

void setup() 
{
  size(875, 875);
  img = loadImage("R3.png");
  print(get(10, 10));
}


void draw()
{
  p=p+2;

  loadPixels(); 
  // Since we are going to access the image's pixels too  
  img.loadPixels(); 
  for (int y = 0; y < width; y++) 
  {
    for (int x = 0; x < height; x++) 
    {
      int loc = y+x*width;


      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      for (int z=0; z<width; z=z+10)
      {
        
        if (y>p && y<p+k)
        {
          if (r<10 && g<10 && b<=10)
          {
            r=p/10;
            g=p/5;
            b=p/2;
          }
        }
        
        if (y>p+15 && y<p+k+15)
        {
          if (r<10 && g<10 && b<=10)
          {
            r=p/5;
            g=p/10;
            b=p/2;
          }
        }
        
        if (y>p+30 && y<p+k+30)
        {
          if (r<10 && g<10 && b<=10)
          {
            
            r=p/2;
            g=p/5;
            b=p/10;
          }
        }
        
      }


      pixels[loc] =  color(r, g, b);
    }
  }
  updatePixels();
}
