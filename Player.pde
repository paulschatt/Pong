void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      if(player1y >=0){
        player1y -= 10;
      }
    }
    else if (keyCode == DOWN) {
      if(player1y <=height){
        player1y += 10;
      }
    }
    else if (keyCode == RIGHT) {
      if(player2y >= 0){
        player2y -= 10;
      }
    }
     else if (keyCode == LEFT) {
      if(player2y <=height){
        player2y += 10;
   }  
  }
 }
}
