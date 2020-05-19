int fx = 50 ;
int fy =50 ;






void draw(){
background(#86FFA7);
fill(#750C86);
ellipse(fx,fy,50,50);












}
void setup(){
  size(800, 600);
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
         fy-=2;
          //Frog Y position goes up
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down 
            fy+=2;
        }
        else if(keyCode == RIGHT)
        {
           fx+=2;
          //Frog X position goes right
        }
        else if(keyCode == LEFT)
        {
          fx-=2;
            //Frog X position goes left
        }
    }
}
