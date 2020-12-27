Particle[] bob = new Particle[100];
void setup() 
{
   size(300,300);
   for(int i = 0; i < 100; i++)
   {
       bob[i] = new Particle(); 
    } 
    bob[0] = new Oddball();
    bob[1] = new Oddball();
}
void draw() 
{
   background(0,0,0);
   for(int i = 0; i < 100; i++)
   {
       bob[i].move();
       bob[i].show();
   }
}
class Particle  
{
    double myX, myY, myColor, myAngle, mySpeed;
    Particle()
    {
        myX = 150 ;
        myY = 150;
        myColor = color ((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
        myAngle = (Math.random()*2*Math.PI); 
        mySpeed = (Math.random()*10);
    }
   void move() 
   {
       myX = myX+ Math.cos(myAngle)*mySpeed;
       myY = myY+ Math.sin(myAngle)*mySpeed;
    }
    void show() 
    {
        fill(myColor);
        stroke(myColor);
        ellipse(myX,myY,10,10);
    }
}
class Oddball extends Particle 
{
   void show() 
    {
        fill(myColor);
        stroke(myColor);
        ellipse(myX+25,myY,10,50);
        ellipse(myX,myY,50,10);
        ellipse(myX-25,myY,10,50);
    }
}    
 
