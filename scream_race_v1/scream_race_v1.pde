
Map[] maps = new Map[7];
Player player = new Player();
 
Boolean moving = true;
void setup (){
  frameRate(120);
  background(0);
  size(1024,480);

  frameRate(60);
  for( int i =0; i < maps.length; i++){
      maps[i] = new Map(i * 200);
  }
  
}


void draw(){
  background(0);
  for( int i =0; i < maps.length; i++){
   maps[i].display();
   maps[i].spawnWalls();
   maps[i].hitCheck();
   
  }
  player.update();
}


  
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