  int x = 150;
  int y = 250;
  int w = 25;
  int h = 25;
  int px = 0;
  int spoder = 100;
  int score = 0;
  int power = -9;
  
  double birdYVelocity = 0;
  
  double gravity = 0.3;
  
  

void setup(){
  size(500,500);
  
  
}

void draw(){
  background(0,0,200);
  
  text(score, 25,25);
  
  fill(0,200,0);
  rect(px,0,50,spoder);
  rect(px,500-spoder,50,spoder);
  
  fill(200,0,0);
  ellipse(x,y,w,h);
  
  y+=birdYVelocity;
  birdYVelocity += gravity;
  
  px-=4;
  if(px < 0){
    px = 500; 
    spoder = (int) random(125, 200);
    
    
  }
  
  if(intersects(x,y,px,0,spoder) || intersects(x,y,px,500-spoder,spoder)){
   System.exit(0); 
  }
  
  if(mousePressed){
    birdYVelocity=power;
  }
  
  if(y >= 500){
   y = 500; 
  }
   
  
  if(y < 0){
   y = 500; 
   
   score++;
   
  }
  
  
}

boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}