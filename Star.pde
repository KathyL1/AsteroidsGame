class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize ;
  public Star(){
      myX = (int)(Math.random()*500);
      myY = (int)(Math.random()*500);   
      mySize = (int)(Math.random()*4)+2;
     
  }
  
  public void show() {
    //stroke(color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256)));
    //strokeWeight(mySize);
    strokeWeight(0);
    fill(color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256)));
    ellipse(myX, myY, mySize, mySize);
  }
}
