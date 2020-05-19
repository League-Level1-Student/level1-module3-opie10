int x = 100;
int y= 300 ;
int bv = 50;
int bg = 3;
int rx =300;
int pw = 50 ;
int upperPipeHeight = (int) random(100, 400);
int pipegap= 75;
int rtx= 450;
int lowerY = upperPipeHeight + pipegap;
int score = 0;
int topipeY =  (int)random(-200,0) ;
int pipeheight = 400; 
int bottompipeY = topipeY + pipeheight+ pipegap ;

PImage back;
PImage pipeBottom;
PImage pipeTop;
PImage bird;
void draw() {

  background(back);

  fill(#00FF39);
  stroke (#00FF39);


  image( bird, x, y);
  y= y+bg;
  fill(#1F7E0A);
  image (pipeTop,rx,topipeY);

  rx=rx-5;
  teleportness();

  image(pipeBottom,rtx, bottompipeY );

  rtx=rtx-5;
  teleportness();
  boolean die=die();



  boolean c = intersectsPipes();
  if (c||die ) {

    noLoop();
  }
  
  
  
  fill(#FFFFFF);
  textSize(17);
  text("Score "+ score, 400,50 );
}
void setup() {
  size(500, 750);
  back = loadImage("flappyBackground.jpg");
  pipeBottom = loadImage("bottomPipe.png");
  pipeTop = loadImage("topPipe.png");
  bird = loadImage("bird.png");
  bird.resize(50, 50);
}
void mousePressed() {
  y= y-bv;
}
void teleportness(
  ) {
  if (rx<0) {
    rx =500;
    topipeY = (int) random(-200, 0);
    score =score+1;
  }
  if (rtx<0) {
    rtx =500;
   bottompipeY = topipeY + pipeheight+ pipegap ;;
    score =score+1;
  }
}

boolean die() {
  if (y<0||y>750) {

    return true;
  }
  return false;
}
boolean intersectsPipes() { 
  if (y < topipeY + pipeheight && x > rx && x < (rx+pw)) {
    return true;
  } else if (y> bottompipeY- 40 && x > rtx && x < (rtx+pw)) {
    return true;
  } else { 
    return false;
  }
}
