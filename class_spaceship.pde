class Ship {
  Ship(){ }
  Ship(float a, float c){
   x = a;  y = random(100, 400); r = c; 
   vx = random(-7,7);
   vy = random(-7,7);
  }
  float x, y, r, vx, vy;
 void spaceship(){
 fill(90,90,255);
 circle(x,y, r*10);
 fill(250,250,0);
 circle(x+r*4.5,y+r*4, r*3);
 circle(x-r*4.5,y+r*4, r*3);
 circle(x,y+r*4.5, r*3);
 fill(100,100,100);
 ellipse(x,y+r*2.5,r*15,r*5);
}
void move(){
  x += vx;
  y += vy;
  if(x < 200) vx = -vx;
  if(x > width-200 ) vx = -vx;
  if(y < 0) vy = -vy;
  if(y > height) vy = -vy;
}
void collide(Ship ss){
  float dx = x - ss.x;
  float dy = y - ss.y;
  float temp;
  if(dx*dx+dy*dy < 100*r*r){
    temp = vx;
    vx = ss.vx;
    ss.vx = temp;
    temp = vy;
    vy = ss.vy;
    ss.vy = temp;
  } 
}
}
