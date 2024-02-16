public static final int MAX_SIDE = 700;
public static final int MIN_SIDE = 10;
int r = 0;

public void setup(){
  size(800, 800);
  rectMode(CENTER);
}

public void draw(){
  background(0,0,0);
  translate(400, 400);
  myFractal(0, 0, MAX_SIDE, MAX_SIDE);
}

public void myFractal(int x, int y, float s, float r){
  if(s <= MIN_SIDE){
    rect(x, y, MIN_SIDE, MIN_SIDE);
    rotate(radians(r));
  }else{
    rect(x, y, s, s);
    rotate(radians(r));
    myFractal(x, y, s*0.95, r+7);
  }
}
