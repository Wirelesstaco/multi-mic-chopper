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