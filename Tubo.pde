public class Tubo extends PhysicalObject {
  // Properties (Instance Variables)
  float angle;
  color colour;  

  Tubo(int x, int y, int theWidth, int theHeight) {
    super(x,y,theWidth,theHeight);

    colour = #BADA55;
    angle = 0.0;
  }

  //Methods
  public void display() {
    fill(colour);
    stroke(#8fa645);
    strokeWeight(5);

    //Rect Arriba
    rect(posX, posY, w, h * 1/3.0);

    //Rect Abajo
    rect(posX + (w * 1/8.0), posY + (h * 1/3.0), w * 6/8.0, h * 2/3.0);
  }
}
