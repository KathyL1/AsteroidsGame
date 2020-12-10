Spaceship bob = new Spaceship();
Asteroid jim = new Asteroid();
Star[] stars;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>(); 
public void setup() 
{
  size(500,500);
  stars = new Star[200];
  for(int i = 0; i < 200; i++){
    stars[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
     rock.add(new Asteroid()); 
  }}
public void draw() 
{
  background (7, 19, 61);
  for(int i = 0; i < 200; i++){
    stars[i].show();
  }
  bob.show();
  bob.move();
  for(int i = rock.size()-1; i>=0; i--){
    rock.get(i).show();
    rock.get(i).move();
      if(dist(rock.get(i).getX(), rock.get(i).getY(), bob.getX(), bob.getY())<25){
        rock.remove(i);   
      }
    if(rock.size()<10){
        rock.add(new Asteroid());
    }
   }
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
