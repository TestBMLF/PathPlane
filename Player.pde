class Player {
  float x ;
  float y ;
  float angle;
  Player(float playerX, float playerY) {
    x = playerX;
    y = playerY;
  }

  void update() {
    background(255);
    translate(x, y);
    PImage img = loadImage("Ship.png");
    rotatePlayer();
    image(img, -25, -25, 50, 50);
    //fill(255);
    //rect(-25, -25, 50, 50);
  }
  void rotatePlayer() {
    if (mouseX<x) {
      angle = (float)(Math.atan((y-mouseY)/(x-mouseX)));
      rotate(-PI/2+angle);
    }
    if (mouseX > x) {
      if (mouseY<y) {
        angle = (float)(Math.atan((mouseX-x)/(y-mouseY)));
        rotate(angle);
      }
      if (mouseY>y) {
        angle = (float)(Math.atan((mouseY-y)/(mouseX-x)));
        rotate(PI/2+angle);
      }
    }
    if(mouseX == x && mouseY>y){
       rotate(PI); 
    }
  }
}