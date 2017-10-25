class Spaceship extends Floater  
{   
  public void setX(int x){myCenterX=x;};  
  public int getX(){return (int)myCenterX;};   
  public void setY(int y){myCenterY=y;};   
  public int getY(){return (int)myCenterY;};   
  public void setDirectionX(double x){myDirectionX=x;}   
  public double getDirectionX(){return myDirectionX;}  
  public void setDirectionY(double y){myDirectionY=y;}   
  public double getDirectionY(){return myDirectionY;}  
  public void setPointDirection(int degrees){myPointDirection=degrees;};   
  public double getPointDirection(){return myPointDirection;}; 
  
  public Spaceship() 
  {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]=-8;
    yCorners[0]=-8;
    xCorners[1]=16;
    yCorners[1]=0;
    xCorners[2]=-8;
    yCorners[2]=8;
    xCorners[3]=-3;
    yCorners[3]=0;
    
    myColor=150;
    myDirectionX=0;
    myDirectionY=0;
    myCenterX=180;
    myCenterY=180;
  }
  public void keyPressed(KeyEvent e)
  {
    if(e.getKeyCode()==40)
    {
      bob.setDirectionX(0);
      bob.setDirectionY(0);
      bob.setX((int)(Math.random()*500));
      bob.setY((int)(Math.random()*500));
      bob.setPointDirection((int)(Math.random()*500));
    }
  }
}