class car
{
  float x,y,k,z,v;
   float speed;
   
  car(float b,float c)
  {
    k=b;
    z=c;
    //rect(b,c,100,25);
    //rect(b,c-25,60,25);
    //ellipse(b+10,c+25,30,30);
    //ellipse(b+60,c+25,30,30);
    //rect(b-10,c+20,10,10);
    speed=random(20);
  }
  void show()
  {
    fill(0);
    ellipse(k+10,z+25,30,30);
    ellipse(k+60,z+25,30,30);
    fill(random(255));
    rect(k,z,100,25);
    rect(k,z-25,60,25);
    rect(k-10,z+20,10,10);
    k=k+speed;
    
    if(k>width)
    {
      k=0;
      
    }
    
}
}
