public class Bird extends PhysicalObject {
  PImage birdImage;
  int speed;

  Bird(int x, int y) {
    super(x, y, 50, 50);
    
    this.speed = 3;

    birdImage = loadImage("bird.png");
  }

  void display() {
    image(birdImage, this.posX, this.posY, this.w, this.h);
  }

  public void moveUp() {
    if (this.posY >= 0) {
      this.posY -= this.speed;
    }
  }

  public void moveDown() {
    if (this.posY+this.h <= height) {
      this.posY += this.speed;
    }
  }
  
  public void dies() {
    birdImage = loadImage("dead-bird.png");
  }
}
