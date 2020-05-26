int fx = 50 ;
int fy =50 ;
PImage yeet;
PImage sleet ;
PImage reet;
PImage mreep;
Car hi = new Car(100, 25, 6, 150);
Car hoi = new Car(200, 150, 6, 150);
Car hio = new Car(30, 275, 5, 150);
Car hello = new Car(150, 400, 6, 150);
Car h0i = new Car(500, 525, 5, 150);
Car hallo = new Car(400, 450, 6, 150);
Car hi0 = new Car(600, 75, 5, 150);
Car ho1 = new Car(350, 325, 6, 150);
class Car {
  int cx;
  int cy;
  int cs;
  int cz;

  Car(int cx, int cy, int cs, int cz) {
    this.cx = cx;
    this.cy= cy;
    this.cs = cs;
    this.cz= cz;
  }
  void display()
  {
    fill(0, 255, 0);
    rect(cx, cy, cz, 50);
  }
  void cxm () {
    cx=cx+cs;
    if (cx>width) {
      cx=-cz;
    }
  }
  void cxr () {
    cx=cx-cs;
    if (cx<-cz) {
      cx=width;
    }
  }

  int getcx() {
    return cx;
  }
  int getcy() {
    return cy;
  }
  int getcz() {
    return cz;
  }
}
boolean crash(Car car) {
  if ((fy > car.getcy() && fy < car.getcy()+50) &&
    (fx > car.getcx() && fx < car.getcx()+car.getcz())) {
          
      fill(#F50F0F);
     textSize(40);
      text("YOU LOSE",width/2,height/2);

      exit();
    
      
      
      
      return true;
  } else {
    return false;
  }
}






void draw() {
  background(yeet);
  fill(#750C86);
  image(mreep,fx,fy);
  boolean die=die();
  if (die) {
    exit();
  }

  image(reet,hi.getcx(),hi.getcy());
  image(reet,hio.getcx(),hio.getcy());
image(reet,hoi.getcx(),hoi.getcy());
image(reet,hello.getcx(),hello.getcy());
  image(reet,h0i.getcx(),h0i.getcy());
  hi.cxm();
  hoi.cxm();
  hio.cxm();
  hello.cxm();
  h0i.cxm();
  image(sleet,hallo.getcx(),hallo.getcy());
  image(sleet,hi0.getcx(),hi0.getcy());
  image(sleet,ho1.getcx(),ho1.getcy());
  hallo.cxr();
  hi0.cxr();
  ho1.cxr();
  crash(hi);
 crash( hoi);
  crash(hio);
  crash(hello);
  crash(h0i);
  crash(ho1);
  crash(hi0);
  crash(hallo);
  
}
void setup() {
  size(800, 600);
  fx=width/2;
  fy=599;
  yeet= loadImage("froggerBackground.png");
  reet= loadImage("carRight.png");
    sleet= loadImage("carLeft.png");
      mreep= loadImage("frog.png");
     yeet.resize(800,600);
      reet.resize(160,100);
      sleet.resize(160,100);
      mreep.resize(75,75);
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      fy-=50;
      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down 
      fy+=50;
    } else if (keyCode == RIGHT)
    {
      fx+=0;
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      fx-=0;
      //Frog X position goes left
    }
  }
}

boolean die() {
  if (fy<0||fy>600) {

    return true;
  }
  return false;
}
