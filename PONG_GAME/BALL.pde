void BALL(){
  smooth();
  stroke(255);
  strokeWeight(1);
  fill(random(255), random(255), random(255));
  ellipse(positionX, positionY, rad, rad);
  positionY = positionY + yspeed;
  positionX = positionX + xspeed;
}
