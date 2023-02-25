float positionX;
float positionY;
int GAP = 30;
int paddley;
float yspeed = 1;
float xspeed = random(-1, 1);
float rad = 20;
int r = 0;
int g = 0;
int b = 0;
float x;
int rectsize = 200;
int score = 0;
boolean press = false; //allows for rainbow mode so that as long as mouse is not clicked, this is false and the background continues to refresh


void setup() {
  size(700,700);
  INITIAL();
}

void draw() {
  //gradient background
  if (press == false) {
    for (int i = 0; i < width; i++) {
      strokeWeight(3);
      stroke(r, g, i);
      line(0, i, width, i);
    }
  }

  //point tracking function
  POINT_TRACK();

  //ball function with movement
  BALL();

  //rectangle
  fill(255);
  rectMode(CENTER);
  x = constrain(mouseX, 0 + rectsize/2, width - rectsize/2);
  rect(x, paddley, rectsize, 20);

  //3 borders for the ball to bounce
  BOUNCE();

  //Scoring with paddle hits
  SCORE();

  //lose condition
  LOSE();
}

//resets the game with initial values
void keyPressed() {
  if (keyPressed == true) {
    loop();
    setup();
    xspeed = random(-1, 1);
    yspeed = 1;
    score = 0;
  }
}

//triggers the rainbow mode
void mousePressed() {
  if (mousePressed == true) {
    press = true;
  }
}

//stops the rainbow mode
void mouseReleased() {
  press = false;
}
