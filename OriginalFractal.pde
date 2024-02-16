public static final int MAX_SIDE = 700;
public static final int MIN_SIDE = 10;
public int r = 0;
public int rotWhole = 0;

public void setup(){
  size(800, 800);
  rectMode(CENTER);
  background(0,0,0);
  translate(400, 400);
  fill(200, 200, 200, 50);
  myFractal(0, 0, MAX_SIDE, MAX_SIDE);
}

public void draw(){
  //rotate(radians(rotWhole + 1));
}

public void myFractal(int x, int y, float s, float r){
  if(s <= MIN_SIDE){
    rect(x, y, MIN_SIDE, MIN_SIDE);
    rotate(radians(r));
  }else{
    rect(x, y, s, s);
    rotate(radians(r));
    myFractal(x, y, s*0.95, 97-(r+1));
  }
}
