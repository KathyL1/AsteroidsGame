Spaceship bob = new Spaceship();
Asteroid jim = new Asteroid();
Star[] stars;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>(); 
ArrayList <Bullet> shot = new ArrayList <Bullet>(); 
int score = 0;

public void setup() 
{
  size(500,500);
  
  textSize(30);
  stars = new Star[200];
  for(int i = 0; i < 200; i++){
    stars[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
     rock.add(new Asteroid()); 
  }
}
public void draw() 
{
  background (7, 19, 61);
  fill(230, 250, 255);
  text("Score: " + score, 350, 50);
  for(int i = 0; i < 200; i++){
    stars[i].show();
  }
  bob.show();
  bob.move();
  for(int i = 0; i < shot.size(); i++){
    shot.get(i).move();
    shot.get(i).show();
    for(int j = 0; j < rock.size(); j++){
      if(dist(shot.get(i).getX(), shot.get(i).getY(), rock.get(j).getX(), rock.get(j).getY())<25){
          rock.remove(j);   
          shot.remove(i);
          score++;
          rock.add(new Asteroid());
          break;
        }
    }
  }
 
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
    bob.turn(-10);
  }else if(key == 'd'){
    bob.turn(10);
  }else if(key == 'w'){ // pushes it in the direction it is facing 
    bob.accelerate(0.1);
  }
  if(key == 'e'){
   bob.hyperspace();
  }
  if(key == ' '){
    shot.add(new Bullet(bob));
  }
}
