Die tim;
void setup()
{
  size(840, 672);

}
void mousePressed()
{
  redraw();
}

void draw() 
{
  background( (int)(Math.random()*240)+1,  (int)(Math.random()*240)+1,  (int)(Math.random()*240)+1);
  int a = 0;
  int b = 0;
  for (int f=0; f<40; f++) {
    for (int g=0; g<40; g++){
      tim = new Die(a, b);
      tim.show();
      a += 21;
    }
    b+= 21;
    a= 0;
}

   
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
    rng = (int)(Math.random()*6)+1;
  }
  void roll()
  {
  }
  void show()
  {
    fill(255,255,255);
    rect(myX, myY, 20, 20, 7);
    fill((int)(Math.random()*240)+1,  (int)(Math.random()*240)+1,  (int)(Math.random()*240)+1);

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
