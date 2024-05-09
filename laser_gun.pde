class WarShip extends Ship{
  WarShip(float a, float c){
    super(a,c);
  }
  void drawgun(){
    spaceship();
    fill(50,50,50);
    rect(x-10*r,y+r, 20*r,2*r);
    fill(90,190,90);
    quad(x, y, x+4*r ,y+r*2, x, y+4*r, x-4*r, y+2*r);
    move();
  }
}
