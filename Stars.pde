class Stars //note that this class does NOT extend Floater
{
  int myX,myY;
  int sizeX,sizeY;
  
  Stars()
  {
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    sizeX=sizeY=5;
  }
  
  void show()
  {
    noStroke();
    fill(200);
    ellipse(myX,myY,sizeX,sizeY);
  }
}