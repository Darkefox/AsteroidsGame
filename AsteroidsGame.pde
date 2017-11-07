Spaceship bob = new Spaceship();
Asteroid[]bunchAst = new Asteroid[10];
Stars[] bunchStars= new Stars[100];
public void setup() 
{
  size(500,500);
  frameRate(60);
  for (int i=0;i< bunchStars.length;i++)
  {
    bunchStars[i] = new Stars();
  }
  for (int i=0;i< bunchAst.length;i++)
  {
    bunchAst[i] = new Asteroid();
  }
}
public void draw() 
{
  background(50);
  for (int i=0;i< bunchStars.length;i++)
  {
    bunchStars[i].show();
  }
  for (int i=0;i< bunchAst.length;i++)
  {
    bunchAst[i].show();
    bunchAst[i].move();
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
      bob.turn(-20);
    } 
    if(e.getKeyCode()==68)
    {
      bob.turn(20);
    }
    if(e.getKeyCode()==83)
    {
      bob.accelerate(1);
    }
    
  }