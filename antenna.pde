class AntennaShip extends Ship{
  AntennaShip(float a, float c){
    super(a,c);
  }
  void drawantenna(){
    fill(50,50,50);
    triangle(x-2*r, y-2*r, x, y-10*r,x+2*r, y-2*r);
    spaceship();
    fill(230,230,230);
    arc(x, y-9*r, 5*r, 5*r, 0, PI);
    fill(200,200,0);
    circle(x, y-10*r, r);
  move();
  }
}
