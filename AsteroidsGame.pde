Spaceship bob = new Spaceship();
Stars[] bunchStars= new Stars[100];
public void setup() 
{
  size(500,500);
  for (int i=0;i< bunchStars.length;i++)
  {
    bunchStars[i] = new Stars();
  }
}
public void draw() 
{
  background(50);
  for (int i=0;i< bunchStars.length;i++)
  {
    bunchStars[i].show();
  }
  bob.show();
  bob.move();
  
}
public void keyPressed(KeyEvent e)
  {
    if(e.getKeyCode()==72)
    {
      bob.setDirectionX(0);
      bob.setDirectionY(0);
      bob.setX((int)(Math.random()*500));
      bob.setY((int)(Math.random()*500));
      bob.setPointDirection((int)(Math.random()*500));
    }
    if(e.getKeyCode()==65)
    {
      bob.turn(-10);
    } 
    if(e.getKeyCode()==68)
    {
      bob.turn(10);
    }
    
  }