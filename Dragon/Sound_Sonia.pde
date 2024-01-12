//Sneha


void Sneha()
{
  
  //Moon coordinates x and y - 
  float x = (float) (-100 + (-xx*500)/400);                                    //Creation of distance from moon to mouse
  float y = (float) (700 - Math.sqrt(600*600 - (x-400)*(x-400)));                //Equation of arc for moon
  float animationCoordinate;                                                          //indication of how much animation is complete
  float eclipseCoordinate;      


  if (-xx < 800) //constrainst
  {
    animationCoordinate = (x - 150)/250.0; //y coordinate generation
  } else
  {
    animationCoordinate = 2;
  }



  if (-xx > 278 && -xx < 524)  
  {
    eclipseCoordinate = ((float) -xx - 278.0)/123.0;
  } else
  {
    eclipseCoordinate = 0.0;
  }
  //eclipse behaviour----------------------------------------------------------------------------------------------------------------------------

  background(0, 211 - 179*(1-Math.abs(1.0 - eclipseCoordinate)), 255 - 127*(1-Math.abs(1.0 - eclipseCoordinate))); //background variation


  //STARS----------------------------------------------------------------------------------------------------------------------------------------
  for (int n = 0; n < 120; n=n+1)
  {
    fill(  (1-Math.abs(1.0 - eclipseCoordinate))*204, 211-7*(1-Math.abs(1.0 - eclipseCoordinate)), 204);
    ellipse(starsx[n], starsy[n], 2, 2);
  }


  //SUN-------------------------------------------------------------------------------------------------------------------------------------------
  fill(255, 215, 0);
  ellipse(400, 100, 80, 80);


  //LOOP FOR SUN-RAYS (using polar form)--------------------------------------------------------------------------------------------------------------------------------------

  float angle = PI*animationCoordinate/2;
  float lineLength1 = 36+47*(Math.abs(1-eclipseCoordinate));
  float lineLength2 = 36+40*(Math.abs(1-eclipseCoordinate));

  pushStyle();
  stroke(255, 215, 0);
  strokeWeight(4);

  for (int p = 0; p <8; p++) {

    line(400, 100, 400 + lineLength1*cos(angle + PI/12 + p*PI/4), 100 + lineLength1*sin(angle + PI/12 + p*PI/4));  //LARGER RAYS 
    line(400, 100, 400 + lineLength2*cos(angle + PI/12+ PI/8 + p*PI/4), 100 + lineLength2*sin(angle + PI/12+ PI/8 + p*PI/4)); //smaller rays
  }
  popStyle();


  //MOON---------------------------------------------------------------------------------------------------------------------------------------------
  fill(180);
  ellipse(x, y, 60.00 + (1-Math.abs(1.0 - animationCoordinate))*20, 60.00 +(1-Math.abs(1.0 - animationCoordinate))*20 );


  //MOUNTAINS (Shadow created with opacity manipulation)----------------------------------------------------------------------------------------------------------------------------------------


  fill(0, 0, 0);
  triangle(450, 600, 800, 100, 1350, 600);

  fill(0, 100, 0, 255-150*(1-Math.abs(1.0 - eclipseCoordinate)));
  triangle(450, 600, 800, 100, 1350, 600);

  fill(0, 0, 0);
  triangle(150, 600, 380, 200, 800, 600);

  fill(154, 205, 50, 255-150*(1-Math.abs(1.0 - eclipseCoordinate)));
  triangle(150, 600, 380, 200, 800, 600);

  fill(0);
  triangle(0, 600, 150, 300, 400, 600);

  fill(60, 179, 113, 255-150*(1-Math.abs(1.0 - eclipseCoordinate)));
  triangle(0, 600, 150, 300, 400, 600);

  fill(0);
  triangle(180, 600, 300, 400, 500, 600);

  fill(34, 139, 34, 255-150*(1-Math.abs(1.0 - eclipseCoordinate)));
  triangle(180, 600, 300, 400, 500, 600);



  fill(255);
  PFont f =createFont ("Garamond", 30);
  textFont(f);
  textSize(30);
  String s=" Sneha Sur Roy";
  text(s, 800, 570);
}
