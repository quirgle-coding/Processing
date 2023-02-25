void SCORE() {
  if (positionY + 20 > height - GAP - 20 && positionX > x - rectsize/2 && positionX < x + rectsize/2) {
    yspeed *= -1.1;
    xspeed *= 1.1;
    score +=1;
  }
}
