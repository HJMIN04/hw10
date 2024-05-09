class Volt extends pikachu{
  Volt(float a, float b, float c){
    super(a,b,c);
  }
  void volt1(){ // 번개 영역에 들어올 시 테두리가 파란색으로 변경
    ss.pika();
      if(x>350 & x<1100 & y> 100){
    stroke(0, 255, 255);
    ss.pika();
      }
  }
  
   void keyMove2() { // 변개 영역에 들어올 시 속도값 증가
     keyMove();
     if(x>350 & x<1100 & y>100){
    if (key == 'd') x += 25;
    else if (key == 'w') y -= 25;
    else if (key == 's') y += 25;
    else if (key == 'a') x -= 25;
  } 
}
}
