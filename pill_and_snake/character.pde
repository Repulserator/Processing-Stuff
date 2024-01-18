class Character
{
  float x;
  float y;
  float size;
  float speed;
  int score=0;
 
  int r=0;
  int g=0;
  int b=0;
 
  int dir;     //0=UP, 1=RIGHT, 2=DOWN, 3=LEFT
 
  void update(){
    if(dir==0){
      y=y-speed;
    }else if(dir==1){
      x=x+speed;
    }else if(dir==2){
      y=y+speed;
    }else if(dir==3){
      x=x-speed;
    }
   


  }
 
  void display(){
    fill(r,g,b);
    ellipse(x,y,size,size);
  }
 
}
