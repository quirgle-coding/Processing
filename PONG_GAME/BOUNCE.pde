void BOUNCE(){
if (positionX + 10 > width || positionX - 10 < 0) {
    xspeed *= -1.05; //slowly increase speed with every collision
  } else if (positionY - 10 < 0) {
    yspeed *= -1.05;
  }
}
