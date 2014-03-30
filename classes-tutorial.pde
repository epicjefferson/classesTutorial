int x;
Tubo t1, t2;
Bird b;

void setup(){
  size(600,400);
  frameRate(60);
  background(0,130,150);
  
  t1 = new Tubo(width, height-150, 100, 150);
  t2 = new Tubo(width, height-300, 200, 100);
  b = new Bird(10,100);

}


void draw(){
  background(0,130,150);
  b.display();
  t1.display();
  t1.setX(width-frameCount);
  
  // Cuando el primer tubo llega a la mitad
  if( frameCount > width/2 ){
    t2.display();
    t2.setX( width-frameCount + width/2 );
  }
  
  // Cuando el primer tubo llego al final
  if (frameCount > width) {
    t2.setHeight( int(t2.getHeight() * 1.01) );
    t2.setY(height - t2.getHeight());
  }
  
  if(keyPressed && keyCode == UP){
    b.moveUp();
  }
  
  if(keyPressed && keyCode == DOWN){
    b.moveDown();
  }
  
  // Check collisions
  if (b.collidesWith(t1) || b.collidesWith(t2)){
    b.dies();
  }  
}
