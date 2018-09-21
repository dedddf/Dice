Die tim;
void setup()
{
  size(30,30);
  noLoop();
}
void draw() 
{
  background(100,100,100);
  tim = new Die(3,4);
  tim.show();
}
void mousepressed()
{
}
class Die
{
  int myX;
  int myY;
  int rng;
      Die(int x, int y) {
    myX= x;
    myY = y;
    rng = (int)(Math.random()*2)+1;
  }
  void roll()
  {
  }
  void show()
  {
      fill(255,255,255);
      rect(myX, myY, 20, 20, 7);
      fill(10,10,10);
      
        //ellipse(myX+10, myY+10, 5, 5);
        ellipse(myX+5, myY+11, 3, 3);
        ellipse(myX+15, myY+11, 3, 3);
      
    }
}
