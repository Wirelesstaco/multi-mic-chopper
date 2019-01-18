
class Map{
  int gapSize = 200;
  int wallWidth = 25;
  float gapPos = random(height);
  int count =0;
  int wallPos = width;
  int wallSpeed = 4;
  int wallDelay;
     float topEnd = gapPos- gapSize/2;
    float bottomStart = gapPos + gapSize/2;
  Map(int _wallDelay){
  float gapPos = random(height);
      wallPos += _wallDelay;
  }
  void display(){
    
    //Three part rectangle, Top, Gap, Bottom
    //Variable gap position

  }

  void spawnWalls(){

     //xOff += .01;
    // gapPos = random(height);

     //Top - Middle positoin - middle gap Size
  
     rect(wallPos,0,wallWidth,topEnd);
     
     //Bottom
   
      rect(wallPos,bottomStart,wallWidth,height -bottomStart);
      
      
    
      if(wallPos < -200 ){
        wallPos = width +300;
      }
      if( moving){
       wallPos = wallPos -wallSpeed;
      }
   
  }
  
  void hitCheck(){
      float playerX = player.playerX();
      float playerY = player.playerY();
      // If blocker is in range and not in gap
        if(playerX > wallPos - wallWidth/2 && playerX < wallPos + wallWidth/2 ){
          
//println("bottom start " + bottomStart +"   playerY " + playerY  + "  topEnd " + topEnd +"   playerY " + playerY );
          if(bottomStart < playerY || topEnd >playerY ){
           println(wallPos);
             moving = false; 
          }
        else{
          
          moving =true; 
        }
  }
  
    
  }

}