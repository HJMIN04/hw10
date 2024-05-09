class lightnings{
  lightnings(){ }
  lightnings(float cloudX, float cloudY){
      x1 = cloudX;
      y1 = cloudY;
      w1 = 200;
      h1 = 100;
  }
  float x1, y1, w1, h1, x2, y2, newX, newY ;
  
  //타원을 이용해 구름 생성
void drawCloud() { 
   strokeWeight(2);
  fill(200);
  noStroke();
  ellipse(x1, y1, w1, h1);
  ellipse(x1 - w1 * 0.5, y1 + h1 * 0.2, w1 * 0.6, h1 * 0.6);
  ellipse(x1 + w1 * 0.5, y1 + h1 * 0.1, w1 * 0.7, h1 * 0.7);
  ellipse(x1, y1 - h1 * 0.3, w1 * 0.5, h1 * 0.5);
}

void drawLightning() {
   strokeWeight(2);
  stroke(255, 255, 0); // 번개 색상은 노란색
  while (y2 < height) {
    // 번개는 무작위로 갈라지면서 아래로 진행
   newY = y2 + random(20, 40);
    newX = x2 + random(-20, 20);
    line(x2, y2, newX, newY);
    x2 = newX;
    y2 = newY;
  }
  noStroke();
}
}
