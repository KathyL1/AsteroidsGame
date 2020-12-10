class Asteroid extends Floater{
 private double rotSpeed;
 public Asteroid(){
   rotSpeed = Math.random()*10-5;
   corners = 6;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = -11;
   yCorners[0] = -15;
   xCorners[1] = 7;
   yCorners[1] = -8;
   xCorners[2] = 13;
   yCorners[2] = -10;
   xCorners[3] = 6;
   yCorners[3] = 10;
   xCorners[4] = -11;
   yCorners[4] = 8;
   xCorners[5] = -5;
   yCorners[5] = 0;
   myColor = color(245,255,210);   
   myCenterX = (int)(Math.random()*500); 
   myCenterY = (int)(Math.random()*500); 
   myXspeed = (int)(Math.random()*6-3); 
   myYspeed = (int)(Math.random()*6-3);  //holds the speed of travel in the x and y directions   
   myPointDirection = (int)(Math.random()*360);
 }
 public void move(){
   turn(rotSpeed);
   super.move();
 }

 public int getX(){
   return (int)myCenterX;
 }
 public int getY(){
   return (int)myCenterY;
 }
 
}
