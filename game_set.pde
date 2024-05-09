void checkSuccess(float x, float y){ 
  fill(153, 204, 255); 
  rect(width-100,0, width -100, height); 
  if(x > width-100 && height> y) 
      goal = 1;
}
void showSuccess(){
  background(181, 206, 235);
  fill(255);
  textSize(60);
  text("Clear!", width/2-90, height/2);
  rect(width/2 -200, height/2 + 300, 400, 100);
  fill(0);
  textSize(60);
  text("Restart", width/2 -90, height/2 + 365);
}
void Fail(){
  background(181, 206, 235);
  fill(255);
  textSize(60);
  fill(255,0,0);
  text("You Died...", width/2-90, height/2);
  rect(width/2 -200, height/2 + 300, 400, 100);
  fill(0);
  textSize(60);
  text("Restart", width/2 -90, height/2 + 365);
}
  
