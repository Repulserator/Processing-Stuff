Character player = new Character();
Character player2 = new Character();
Pill pill = new Pill();

final int toWin=5;

void setup() {
  size(500, 500);
  background(0);

  player.x=15;
  player.y=height/2;
  player.size=30;
  player.dir=1;
  player.g=255;
  player.speed=3;

  player2.x=width-15;
  player2.y=height/2;
  player2.size=30;
  player2.speed=3;
  player2.dir=3;
  player2.b=255;

  pill.size=10;
  pill.update();
}

void draw() {
  background(0);

  if (player.score>=toWin) {
    background(0);
    textSize(30);
    fill(player.r, player.g, player.b);
    textAlign(CENTER);
    text("Player 1 wins!!", (width/2), height/2);
    return;
  } else if (player2.score>=toWin) {
    background(255);
    textSize(30);
    fill(player2.r, player2.g, player2.b);
    textAlign(CENTER);
    text("Player 2 wins!!", (width/2), height/2);
    return;
  }

  if (key=='w') {
    player.dir=0;
  } else if (key=='d') {
    player.dir=1;
  } else if (key=='s') {
    player.dir=2;
  } else if (key=='a') {
    player.dir=3;
  }

  if (keyCode==UP) {
    player2.dir=0;
  } else if (keyCode==RIGHT) {
    player2.dir=1;
  } else if (keyCode==DOWN) {
    player2.dir=2;
  } else if (keyCode==LEFT) {
    player2.dir=3;
  }

  player.update();
  player.display();

  player2.update();
  player2.display();

  pill.checkCollision(player);
  pill.checkCollision(player2);
  pill.display();

  textSize(15);
  fill(255);
  text("PinkPanther: "+player.score, 0, 20);
  text("Repulserator: "+player2.score, 0, 40);
}
