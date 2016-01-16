Player player;
Point[] points = new Point[10];
int index = 0;
void setup() {
  size(1000, 1000);
  background(255);
  player = new Player(width/2-25, height-100);
}

void draw() {
  background(255);

  for (int i=0; i<index; i++) {
    if (points[i].number == 0) {
      line(points[i].x, points[i].y, player.x, player.y);
    } else {
      line(points[i].x, points[i].y, points[i-1].x, points[i-1].y);
    }
    points[i].update();
    player.movePLayer(points[0].x, points[0].y);
  }
  player.update();
}

void mouseClicked() {
  if (index <= points.length-1) {

    points[index] = new Point(index, mouseX, mouseY); 
    println("pointNumber = " + points[index].number + " coord= " + points[index].x +";"+ points[index].y + " length = " + points.length ); 

    index++;
  } else {
    return;
  }
}