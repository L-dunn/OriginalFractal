public static final int MAX_SIDE = 600;
public static final int MIN_SIDE = 80;


public void setup(){
  size(800, 800);
  rectMode(CENTER);
  //for(int i = 0; i < 5; i++){
  //  rect(400, 400, 100, 100);
  //  rotate(radians(30));
  //}
}

public void draw(){
  myFractal(400, 400, MAX_SIDE);
}

public void myFractal(int x, int y, int s){
  if(s <= MIN_SIDE){
   rect(x, y, MIN_SIDE, MIN_SIDE);
  }else{
    //rotate(PI/6.0);
    rect(x, y, s, s);
    //rotate(-1*PI/6.0);
    myFractal(x, y, s-40);
  }
}
