class Asteroid extends Floater
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
  
  protected int randTurn;
  protected double randDir;
  
  public Asteroid()
  {
    randTurn=(int)(Math.random()*20)-10;
    randDir=(double)(Math.random()*4)-2;
    
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]=-11;
    yCorners[0]=-8;
    xCorners[1]=7;
    yCorners[1]=-8;
    xCorners[2]=13;
    yCorners[2]=0;
    xCorners[3]=6;
    yCorners[3]=10;
    xCorners[4]=-11;
    yCorners[4]=8;
    xCorners[5]=-5;
    yCorners[5]=0;
    
    myColor=230;
    myDirectionX=randDir;
    myDirectionY=randDir;
    myCenterX=(int)(Math.random()*500);
    myCenterY=(int)(Math.random()*500);
  }
  
  public void move()
  {
    turn(randTurn);
    super.move();
  }
  
}