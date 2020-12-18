class Bullet extends Floater{
 public Bullet(Spaceship theBob){
   myCenterY = theBob.getY();
   myCenterX = theBob.getX();
   myPointDirection = theBob.getPointDirection();
   accelerate(5);
 }
 public void show(){
   ellipse((float) myCenterX, (float) myCenterY, 10, 10);
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
 
 public int getX() {
    return (int)myCenterX; 
  }
  public int getY() {
    return (int)myCenterY; 
  }
}
