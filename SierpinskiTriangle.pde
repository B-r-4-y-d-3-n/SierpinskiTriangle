public void setup(){
  size(800,800);
  background(0,0,0);
}
int heelo = 800;
public void draw(){
  sierpinski(0,800,heelo);
}
void keyPressed(){
  background(0,0,0);
  if(key == ' '){
    heelo = heelo + 100;
  }
}
public void sierpinski(int x, int y, int len){
  if(len<20)
  {
    triangle(x,y,x+len,y,x+(len/2),y-len);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
