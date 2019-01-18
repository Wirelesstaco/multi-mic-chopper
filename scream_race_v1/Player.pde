  
class Player{
  float gravity = 0.2;
  float thrust = 0.4;
  float yPos = 200;
  float velocity = 0;
  float xPos = 200;
  float playerSize =30;
  Player(){
    
    
  }
  public float playerX(){
     return xPos; 
  }
   public float playerY(){
     return yPos; 
  }
  void update(){
     velocity = velocity+ gravity;
     if (mousePressed) {
       velocity = velocity- thrust;
      
    
      }
      if(yPos > height){
        velocity =0;
        yPos = height;
      }
      
        else if(yPos < 0){
        velocity =0;
        yPos = 0;
      }
       yPos = yPos + velocity;
 
      ellipse(200,yPos,playerSize,playerSize);
   
     
  }
 
}