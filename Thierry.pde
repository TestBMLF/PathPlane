Player player;

void setup() {
  size(500, 500);
  background(255);
  player = new Player(width/2-25, height-100);
}

void draw() {
  player.update();
}