Spaceship bob = new Spaceship();

ArrayList<Asteroid> bunchAst = new ArrayList<Asteroid>();

ArrayList<Bullet> bunchBul = new ArrayList<Bullet>();
Stars[] bunchStars= new Stars[100];
Asteroid newAst;
public void setup() 
{
  size(500,500);
  frameRate(60);
  for (int i=0;i< bunchStars.length;i++)
  {
    bunchStars[i] = new Stars();
  }
  for (int i=0;i< 5;i++)
  {
    newAst = new Asteroid();
    bunchAst.add(newAst);
  }
  
}
public void draw() 
{
  background(50);
  for (int i=0;i< bunchStars.length;i++)
  {
    bunchStars[i].show();
  }
  for (int i=0;i< bunchAst.size();i++)
  {
    bunchAst.get(i).show();
    bunchAst.get(i).move();
    if(dist(bunchAst.get(i).getX(), bunchAst.get(i).getY(),bob.getX(),bob.getY())<20)
    {
      bunchAst.remove(i);
    }
    
  }
  bob.show();
  bob.move();
  //loop through the arraylist for bullets and display i
  for(Bullet test: bunchBul)
  {
    test.move();
    test.show();
  }

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
    if(e.getKeyCode() == 87)
    {
      Bullet newbullet = new Bullet(bob);
      bunchBul.add(newbullet);
      
    }
    
  }
  
 