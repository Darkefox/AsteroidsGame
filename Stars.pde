class Stars //note that this class does NOT extend Floater
{
  private int myX,myY;
  private int sizeX,sizeY;
  
  public Stars()
  {
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    sizeX=sizeY=5;
  }
  
  public void show()
  {
    noStroke();
    fill(200);
    ellipse(myX,myY,sizeX,sizeY);
  }
}