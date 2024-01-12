//yes
//This is my dragon


void drawDragon() 
{
  rectMode(CENTER);
  beginShape();
  //TAIL

  //WINGS

  noStroke();
  fill(137, 41, 133);
  for (b = 100, a = 233; b < 500 && a < 500; b=b+13, a=a+8)   //Now little edgy (L)
  {
    rect(b, a, 25, 25);
  }

  noStroke();
  fill(137, 41, 133);
  for (c = 915, d = 233; c > 600 && d < 500; c=c-13, d=d+8)   //Now little edgy (R)
  {
    rect(c, d, 25, 25);
  }
  pushMatrix();
  noStroke();
  fill(137, 41, 133); 
  quad(90, 220, 300, 240, 420, 400, 430, 430);    //Lets put on some wings shall we? (L)
  stroke(0);
  strokeWeight(2);
  line(90, 220, 300, 240);
  line(300, 240, 420, 400);


  noStroke();
  fill(137, 41, 133);
  quad(570, 430, 580, 400, 710, 240, 920, 220);  // Lets put on some wings shall we (R)
  stroke(0);
  strokeWeight(2);
  line(570, 430, 580, 400);
  line(580, 400, 710, 240);
  stroke(0);
  popMatrix();

  //LEGS

  stroke(0);
  fill(170, 1, 20);
  quad(365, 650, 410, 600, 500, 640, 500, 650); //Left leg cap

  stroke(0);
  fill(170, 1, 20);
  quad( 545, 650, 545, 630, 590, 600, 635, 650); //Right leg cap
  strokeWeight(1);
  stroke(0);
  fill(170, 1, 20);
  rect(410, 725, 90, 150);  //Left Leg

  stroke(0);

  fill(170, 1, 20);
  rect(590, 725, 90, 150);  //right Leg

  //HANDS
  stroke(0);
  fill(170, 1, 20); 
  quad(200, 550, 250, 550, 400, 500, 425, 425); //left Hand

  stroke(0);
  fill(170, 1, 20); 
  quad(575, 425, 600, 500, 760, 550, 810, 550); //right hand

  //BUT MY BODY~
  stroke(0);
  fill(124, 112, 98);
  ellipse(500, 525, 220, 400);   //Dat Stomach

  stroke(0);
  fill(86, 71, 60);
  ellipse(500, 525, 130, 260);


  //FACE

  stroke(255);
  fill(255);
  quad(350, 150, 400, 230, 410, 210, 430, 200);  //Left Horn

  stroke(255);
  fill(255);
  quad(570, 200, 590, 210, 600, 230, 650, 150);  //Right horn

  stroke(0);
  fill(170, 1, 20);
  rect(500, 300, 200, 200);  //Face it

  stroke(0);
  fill(255, 204, 0);
  ellipse(460, 250, 35, 35); //EYE

  stroke(0);
  fill(255, 204, 0);
  ellipse(540, 250, 35, 35); //EYE

  stroke(0);
  fill(0);
  ellipse(485, 350, 20, 20);  //Nose
  ellipse(515, 350, 20, 20);  //Nose breathes fire


  rectMode(CORNER);
  
  endShape();
}
