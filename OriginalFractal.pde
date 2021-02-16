void setup(){
  size(1000,1000);
  rectMode(CENTER);
  fractal(500,500, 100);

}
void draw(){
}

void fractal(int x, int y, int size){
  if(size < 10){
    return;
  }
  fractal(x+size, y, size/2);
  drawPerson(x, y, size);
}
void drawPerson(int x, int y, int size){
  //face
  int eyes = getRandColor();
  int skin = getRandColor();
  int clothes = getRandColor();
  fill(skin);
  ellipse(x, y, size,size);
  fill(eyes);
  ellipse(x-size/5, y - size/5, size/3, size/3);
  ellipse(x+size/5, y - size/5, size/3, size/3);
  
  //body
  fill(skin);
  rect(x-size/2,y+(size * 1.5), size/2, size * 1.5);
  rect(x+size/2,y+(size * 1.5), size/2, size*1.5);
  fill(getRandColor());
  fill(clothes);
  rect(x,y+(size * 1.5), size, size*2);


  
  //legs
  rect(x-size/2,y+ size * 3, size/2, size);
  rect(x+size/2,y+(size * 3), size/2, size);


}

int getRandColor(){
  return color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
