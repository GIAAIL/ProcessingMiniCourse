// Bouncing ball
//
float bx, by;  // Position of the ball.
float vx, vy;  // Velocity of the ball.
float r;  // Radius of the ball.

void setup() {
  size(600, 600);
  bx = width/2;
  by = height/2;
  vx = random(-2, 2);
  vy = random(-2, 2);
  r = 15;
}

void draw() {
  background(0);
  circle(bx, by, r*2);
  // Update position of the ball.
  bx = bx + vx;
  by = by + vy;
  // Boundary checking.
  if (bx <= r) {
    bx = r;
    vx = -vx;
  }
  if (bx >= width-r) {
    bx = width-r;
    vx = -vx;
  }
  if (by <= r) {
    by = r;
    vy = -vy;
  }
  if (by >= height-r) {
    by = height-r;
    vy = -vy;
  }
}

void keyPressed() {
  switch (key) {
    case '[': vx *= 0.9; vy *= 0.9; break;  // Acceleration.
    case ']': vx *= 1.2; vy *= 1.2; break;  // Deceleration.
  }
}
