class pikachu {
  pikachu(){}
  pikachu(float a, float b, float c){
    x = a;
    y = b;
    z = c;
    x = 70;
    y = 400;
    z = 2; 
  }
  float x, y, z;
  void pika(){
    fill(255,218,0);
  ellipse(x-15*z,y-30*z,10*z,40*z);
  fill(0);
  beginShape();
  curveVertex(x-15*z+4.5*z, y-30*z-10*z);
 curveVertex(x-15*z+4.5*z, y-30*z-10*z);
 curveVertex(x-15*z+2.5*z, y-30*z-20*z);
 curveVertex(x-15*z-2.5*z,y-30*z-20*z);
 curveVertex(x-15*z-4.5*z, y-30*z-10*z);
 curveVertex(x-15*z-4.5*z, y-30*z-10*z);
 endShape();
 fill(255,218,0);
  ellipse(x+15*z,y-30*z,10*z,40*z);
  fill(0);
  beginShape();
  curveVertex(x+15*z+4.5*z, y-30*z-10*z);
 curveVertex(x+15*z+4.5*z, y-30*z-10*z);
 curveVertex(x+15*z+2.5*z, y-30*z-20*z);
 curveVertex(x+15*z-2.5*z,y-30*z-20*z);
 curveVertex(x+15*z-4.5*z, y-30*z-10*z);
 curveVertex(x+15*z-4.5*z, y-30*z-10*z);
 endShape();
     fill(255,218,0);
  ellipse(x,y,55*z,50*z);
    fill(0);
  ellipse(x-10*z,y-5*z,10*z,10*z);
  ellipse(x+10*z,y-5*z,10*z,10*z);
  fill(255,255,255);
  ellipse(x-10*z+1.8*z,y-5*z-2.4*z,4*z,4*z);
  ellipse(x+10*z-1.8*z,y-5*z-2.4*z,4*z,4*z);
   fill(255,0,0);
  stroke(255);
  ellipse(x-17*z,y+7*z,10*z,10*z);
  ellipse(x+17*z,y+7*z,10*z,10*z);
     fill(0);
  ellipse(x,y,3*z,z);
  noFill();
  stroke(0);
  curve(x,y-10*z,x,y+7*z,x-10*z,y+7*z,x-10*z,y-10*z);
  curve(x,y-10*z,x,y+7*z,x+10*z,y+7*z,x+10*z,y-10*z);
  }
   void keyMove() {
    if (key == 'd') x += 15;
    else if (key == 'w') y -= 15;
    else if (key == 's') y += 15;
    else if (key == 'a') x -= 15;
  } 
  void crash(Ship ss){
  float dx = x - ss.x;
  float dy = y - ss.y;
   if(dx*dx+dy*dy <(5*ss.r+22.5*z)*(5*ss.r+22.5*z)){
  dead = 1;
 }
  }
  

 void reset(){
    x = 70;
    y = 400;
    z= 2;
  }
    
}
