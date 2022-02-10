public void setup(){ 
  size(500, 500);
  background(#4C88B4);
  stroke(0);
  rectMode(CENTER);
  
}

public void draw(){
  myFractal(250, 200, 250);
}

public void myFractal(int x, int y, int siz){
  //bear head
  fill(#B4A54C);
  bezier(x-siz/3, y+siz/3, x-siz, y+2*siz, x+siz, y+2*siz, x+siz/3, y+siz/3);
  ellipse(x-siz/3, y-siz/3, siz/3, siz/3);
  ellipse(x+siz/3, y-siz/3, siz/3, siz/3);
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  ellipse(x-siz/3, y-siz/3, siz/5, siz/5);
  ellipse(x+siz/3, y-siz/3, siz/5, siz/5);
  fill(#B4A54C);
  ellipse(x, y, siz, siz);
  //frame
  fill(0);
  rect(x, y+siz*3/4, siz*5/6, siz*5/6);
  fill(#4C88B4);
  rect(x, y+siz*3/4, siz*2.75/4, siz*2.75/4);
  //bear limbs
  fill(#B4A54C);
  ellipse(x-siz/2, y+siz*2/3, siz/3, siz/3);
  ellipse(x+siz/2, y+siz*2/3, siz/3, siz/3);
  ellipse(x-siz/3, y+1.5*siz, siz/2, siz/2);
  ellipse(x+siz/3, y+1.5*siz, siz/2, siz/2);
  //face
  fill(255);
  ellipse(x-siz/6, y-siz/6, siz/5, siz/5);
  ellipse(x+siz/6, y-siz/6, siz/5, siz/5);
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  ellipse(x-siz/6, y-siz/6, siz/9, siz/9);
  ellipse(x+siz/6, y-siz/6, siz/9, siz/9);
  fill(#F0E9C6);
  ellipse(x, y, siz/3, siz/3);
  fill(0);
  ellipse(x, y-siz/12, siz/9, siz/9);
  
  
  //fractal
  if(siz>10){
   myFractal(x, y+(int)(siz*1.75/3), siz*2/7); 
  }
  
}
