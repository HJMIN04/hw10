Ship [] aa, bb, cc;
Volt ss;
WarShip [] w;
AntennaShip [] A;
lightnings [] a;
int goal = 0, dead = 0, keeptext = 0;

void setup(){
 size(1500,800);
  frameRate(30);
 a= new lightnings[3];
 w = new WarShip[3];
 A = new AntennaShip[3];
 for (int i = 0; i < 3; i++){
   a[i] = new lightnings(width / 3 + 200*i, height / 6);
   w[i] = new WarShip(200 + 250*i, 10);
   ss = new Volt(70, 400 , 2);
    A[i] = new AntennaShip(200 + 300*i ,10);

 }
}
 void draw(){
   background(0, 10, 90);
   w[0].collide(w[1]);
   w[0].collide(w[2]);
   w[1].collide(w[2]);
   A[0].collide(A[1]);
   A[0].collide(A[2]);
   A[1].collide(A[2]);
   for(int i = 0; i < 3; i++){
     for(int k = 0; k < 3; k++){
     A[i].collide(w[k]);
   }
   }
   for (int i = 0; i < 3; i++){
   a[i].drawCloud();
   w[i].drawgun();
   A[i].drawantenna();
   w[i].move();
   ss.crash(w[i]);
   ss.crash(A[i]);
   }
   checkSuccess(ss.x, ss.y);
   ss.volt1();
   if(goal==1) showSuccess();
   if(dead ==1) Fail();
   
  if (random(1) < 0.02 & goal ==0 & dead ==0) { // 약 2% 확률로 번개가 침
  for(int i=0; i<3; i++){
    a[i].x2 = width / 3 + 200*i + random(-50,50);
    a[i].y2 =  height / 6 + 50;
    a[i].drawLightning();
  }
  }
   else {
      for(int i=0; i<3; i++){
        stroke(0);
        a[i].drawLightning();
      }
   }
  
 }
void keyPressed(){
  ss.keyMove2();
  }

void mousePressed(){
  if(goal !=0) {//clear
    if(mouseX > width/2 - 200 && mouseX < width/2 + 200
    && mouseY > height/2 + 300 && mouseY < height/2 + 400);
    ss.reset();
    dead = 0;
    goal = 0;
  }
  if(dead !=0) {//over
    if(mouseX > width/2 -200 && mouseX < width/2 + 200
    && mouseY > height/2 + 300 && mouseY < height/2 + 400)
    ss.reset();
    dead = 0;
    goal = 0;
  }
}
