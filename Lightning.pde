
Bacteria[] bob;
 void setup()   
 {     
  size(500,500);
  bob = new Bacteria[300];
  for(int r = 0; r < bob.length; r++){
    bob[r] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500));
  }
 }   
 void draw()   
 {    
   background(0);
   for(int r = 0; r < bob.length; r++){
     bob[r].walk();
     bob[r].show();
   }
 }  
 class Bacteria    
 {     
   int myX, myY, myColor1, myColor2, myColor3; 
   Bacteria(int x1, int y1)
   {
    myX = x1;
    myY = y1;
    myColor1 = (int)(Math.random()*256);
    myColor2 = (int)(Math.random()*256);
    myColor3 = (int)(Math.random()*256);
   }
   void walk()
   {
     myX = myX + (int)(Math.random() * 11) - 5;
     myY = myY + (int)(Math.random() * 11) - 5;
    if(myX < mouseX){
       myX = myX + (int)(Math.random() * 3) + 1;
    }
    if(myX > mouseX){
      myX = myX + (int)(Math.random() * 3) - 3;
    }
    if(myY < mouseY){
       myY = myY + (int)(Math.random() * 3) + 1;
    }
     if(myY > mouseY){
       myY = myY + (int)(Math.random() * 3) - 3;
    }
    if(myX == mouseX){
     if(myY == mouseY){
      background(0);
      }
     }
   }
   void show()
   {
     fill(myColor1, myColor2, myColor3);
     ellipse(myX, myY, 10, 10);
     fill(myColor3, myColor1, myColor2);
     ellipse((myX - 2), (myY + 1), 3, 3);
     ellipse((myX + 1), (myY - 2), 3, 3);
   }
 }    
