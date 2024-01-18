class Pill
{
  float x;
  float y;
  float size;

  void update() {
    x=random(width);
    y=random(height);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(x, y, size, size);
  }

  void checkCollision(Character player) {
    if (Math.abs(x-player.x)<(size+player.size)/2) {
      if (Math.abs(y-player.y)<(size+player.size)/2) {
        player.score++;
        update();
      }
    }
  }
}
