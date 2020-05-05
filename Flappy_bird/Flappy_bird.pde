int x = 100;
int y= 300 ;
int bv = 50;
int bg = 3;
void draw(){
  background(#00E3FF);
fill(#00FF39);
stroke (#00FF39);
ellipse(x, y, 50, 50);
  y= y+bg;
  fill(#1F7E0A);
rect(300,0,  50, 250);
  
}
void setup(){
  size(600, 600);
  
}
void mousePressed(){
y= y-bv;

}
