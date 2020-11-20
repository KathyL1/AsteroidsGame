//your variable declarations here
Spaceship bob = new Spaceship();
Star[] stars;
public void setup() 
{
  //your code here
  size(500,500);
  stars = new Star[200];
  for(int i = 0; i < 200; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background (7, 19, 61);
  for(int i = 0; i < 200; i++){
    stars[i].show();
  }
  bob.show();
  bob.move();
  
     
}

public void keyPressed()
{
  if(key == 'a'){
    bob.turn(-5);
  }else if(key == 'd'){
    bob.turn(5);
  }else if(key == 'w'){ // pushes it in the direction it is facing 
    bob.accelerate(0.1);
  }
  
  if(key == 'e'){
   bob.hyperspace();
  }
}
