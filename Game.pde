int rad = 10;        // Width of the shape
float xpos, ypos;    // Starting position of shape    

float xspeed = 4.0;  // Speed of the shape
float yspeed = 3.1;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom

int player1y = 170;
int player2y = 170;

int player1x = 20;
int player2x = 620;
void setup() 
{
  size(640, 360);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
}


void draw() 
{
  background(0);
  
  // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
  if (xpos > width-player2x-rad && xpos > player2x) {
    xdirection *= -1;
  }
  if (xpos < player1x+rad+10) {
     if(ypos-player1y < 21 && ypos-player1y > -21){
        xdirection *= -1;
     }
  }

  // Draw the shape
  ellipse(xpos, ypos, rad, rad);
  rect(player1x,player1y,15,40);
  rect(player2x,player2y,15,40);
}
