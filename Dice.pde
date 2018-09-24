Die tim;
void setup()
{
  size(30, 30);
  noLoop();
}
void draw() 
{
  background(100, 100, 100);
  tim = new Die(3, 4);
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
    rng = (int)(Math.random()*5)+1;
  }
  void roll()
  {
    rng = (int)(Math.random()*5)+1;
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX, myY, 20, 20, 7);
    fill(10, 10, 10);

    if (rng==1) {
      ellipse(myX+10, myY+10, 3, 3);
    } else if (rng==2) 
    {
      ellipse(myX+5, myY+11, 3, 3);
      ellipse(myX+15, myY+11, 3, 3);
    } else if (rng==3)
    {
      ellipse(myX+10, myY+6, 3, 3);
      ellipse(myX+5, myY+14, 3, 3);
      ellipse(myX+15, myY+14, 3, 3);
    } else if (rng==4)
    {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+6, 2, 2);
      ellipse(myX+6, myY+14, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);
    } else if (rng==5) {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+6, 2, 2);
      ellipse(myX+6, myY+14, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);
      ellipse(myX+10, myY+10, 3, 3);
    } else {
      ellipse(myX+6, myY+6, 2, 2);
      ellipse(myX+14, myY+6, 2, 2);
      ellipse(myX+6, myY+14, 2, 2);
      ellipse(myX+14, myY+14, 2, 2);
      ellipse(myX+6, myY+10, 2, 2);
      ellipse(myX+14, myY+10, 2, 2);
    }
  }
}
