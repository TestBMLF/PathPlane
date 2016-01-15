class Player {
  float x ;
  float y ;

  Player(float playerX, float playerY) {
    x = playerX;
    y = playerY;
  }

  void update() {
    background(255);
    translate(x, y);
    rotatePlayer();
    fill(255);
    rect(-25, -25, 50, 50);
  }
  void rotatePlayer() {
    if (x == mouseX) {
      if (y >= mouseY) {
        rotate(PI);
      } else {
        rotate(0);
      }
    } else {
      float thetaAngle = (float)(Math.atan((y-mouseY)/(x-mouseX)));
      rotate(thetaAngle);
    }
  }
}