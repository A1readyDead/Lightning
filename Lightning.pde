int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  background(90,40,100);
}
void draw()
{
  stroke(0, 255, 0);
int random = ((int)(Math.random()*19)) - 9; 
  endX = startX + (int)(Math.random()*10);
  endY = startY + random;
     if (random < 0){
     stroke(255, 0, 0);
     }
    line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
}
void mousePressed()
{
background(90,40,100);
startX = 0;
startY = 150;
endX = 0;
endY = 150;
}
