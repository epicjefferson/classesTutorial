public class PhysicalObject implements Collidable {
  int posX, posY;
  int w, h;

  PhysicalObject(int x, int y, int w, int h) {
    this.posX = x;
    this.posY = y;
    this.w = w;
    this.h = h;
  }

  public boolean collidesWith(Collidable obj) {
    int objX = obj.getX();
    int objY = obj.getY();
    int objW = obj.getWidth();
    int objH = obj.getHeight();

    if ( this.posX > objX && this.posX < objX+objW ) {
      if (this.posY > objY && this.posY < objY+objH) {
        return true;
      }
    }

    if ( this.posX+this.w > objX && this.posX+this.w < objX+objW ) {
      if (this.posY+this.h > objY && this.posY+this.h < objY+objH) {
        return true;
      }
    }

    return false;
  }

  public int getX() {
    return posX;
  }

  public void setX(int x) {
    posX = x;
  }

  public int getY() {
    return posY;
  }

  public void setY(int y) {
    posY = y;
  }

  public int getWidth() {
    return w;
  }

  public void setWidth(int theWidth) {
    w = theWidth;
  }

  public int getHeight() {
    return h;
  }

  public void setHeight(int theHeight) {
    h = theHeight;
  }
}
