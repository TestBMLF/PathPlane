class Player {
  float x ;
  float y ;
  float angle;
  float pathAngle;
  float pathLeft;
  float pathDone = 0;
  float speed = 2;
  Player(float playerX, float playerY) {
    x = playerX;
    y = playerY;
  }

  void update() {
    pushMatrix();
    translate(x, y);
    PImage img = loadImage("images/Ship.png");
    rotatePlayer();
    image(img, -25, -25, 50, 50);
    popMatrix();
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
    if (mouseX == x && mouseY>y) {
      rotate(PI);
    }
  }
  void movePLayer(float toX, float toY) {

    pathLeft = (float)sqrt(pow((toX-x), 2) + pow((toY - y), 2));
    pathAngle = atan((toY-y)/(toX-x));
    if (toX<x && toY < y) {
      x -= cos(pathAngle)*speed;
      y -= sin(pathAngle)*speed;
    } else if ( toX<x && toY>y) {
      x -= cos(pathAngle)*speed;
      y -= sin(pathAngle)*speed;
    } else if ( toX>x && toY<y) {
      x += cos(pathAngle)*speed;
      y += sin(pathAngle)*speed;
    } else if (toX>x && toY>y) {
      x += cos(pathAngle)*speed;
      y += sin(pathAngle)*speed;
    }
    //pathDone += sqrt(pow(cos(pathAngle)*speed,2))+pow(sin(pathAngle)*speed,2);
    if (pathLeft< 1){
      x = toX;
      y = toY;
    }
    pushMatrix();
    translate(x, y);
    popMatrix();
    println("Path done = " + pathDone + " path length = " + pathLeft);
  }
}