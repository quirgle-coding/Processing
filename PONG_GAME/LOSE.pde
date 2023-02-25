void LOSE(){
  if (positionY + 10 > height - 30){
    noLoop();
    textSize(50);
    textAlign(CENTER,CENTER);
    text("GAME OVER!",350,350);
    textSize(25);
    text("Press any key to try again",350,400);
  }
}
