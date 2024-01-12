//SHOSHANK


void shashankman()
{
  


  strokeWeight (2);
  fill (255, 205, 148);
  rect (400, 400, 80, 80); //face

  fill (255);
  ellipse (420, 430, 20, 15); //eye
  ellipse (460, 430, 20, 15); //eye

  fill (0);
  ellipse (420, 430, 10, 10); //eyeball
  ellipse (460, 430, 10, 10); //eyeball

  rect (430, 455, 20, 20);

  fill (0);
  rect (395, 375, 35, 35);//hair

  fill (0);
  rect (420, 375, 35, 35);
  rect (450, 375, 35, 35);

  fill (255, 0, 0);
  rect (400, 390, 80, 10);  //headphone crossbar

  fill (255, 0, 0);
  rect (395, 395, 5, 40); //right headphone vertical

  fill (255, 0, 0);
  rect (380, 430, 20, 20);  // right headphone
  rect (380, 450, 20, 20);

  fill (255, 0, 0);
  rect (480, 395, 5, 40); //left headphone vertical

  fill (255, 0, 0);
  rect (480, 430, 15, 20); //Left head phone
  rect (480, 450, 15, 20);

  fill (255, 205, 148);
  rect (420, 480, 40, 20); //neck


  fill (0, 170, 0);
  rect (375, 500, 130, 100); //body

  pushMatrix ();

  fill(10, 100, 10, 255);
  rect (390, 600, 30, 70); // right leg
  rect (460, 600, 30, 70);//left leg;

  fill(150);
  rect (370, 660, 50, 25); //right shoe

  rect (460, 660, 50, 25); //left shoe
  popMatrix();

  fill (0, 170, 0);
  rect (355, 500, 20, 70); //right arm
  rect (505, 500, 20, 70); //left arm


  fill (255, 205, 148);
  ellipse (365, 570, 30, 30); //right palm
  ellipse (515, 570, 30, 30); //left palm
  
}
