
Player player = new Player();
void setup(){
  size(500,500);
  player.playerX =  width/2-25;
  player.playerY = height-100;
}
void draw(){
  background(255);
  player.create();
}

void mouseClicked(){
  if(mouseButton == LEFT){
    background(0);
  }
}
public class Player{
float playerX ;
float playerY ;
  void create(){
    translate(player.playerX, player.playerY);
    rotatePlayer();
    rect(-25, -25, 50, 50);
  }
  void rotatePlayer(){
    float thetaAngle = (float)(Math.atan((player.playerY-mouseY)/(player.playerX-mouseX)));
    rotate(thetaAngle);
  }
}
