// Setting up the canvas. Run once.
//
void setup() {
  size(600, 600);
}

// Random radiant rays. Try to alter styles.
//
void draw() {
  stroke(random(255));
  strokeWeight(random(0.5, 3));
  line(width/2, height/2, random(width), random(height));
}

// Same radiant rays in polar coordinate.
// Polar Coordinate: (radius, angle in radians)
//
//void draw() {
//  stroke(random(255));
//  strokeWeight(random(0.5, 3));
//  float R = random(50, 300);
//  float A = random(0, TWO_PI);
//  float x = R * cos(A);
//  float y = R * sin(A);
//  line(width/2, height/2, x+width/2, y+height/2);
//}

// Same radiant rays in polar coordinate, version 2.
//
//void draw() {
//  background(0);
//  translate(width/2, height/2);
//  stroke(random(255));
//  strokeWeight(random(0.5, 3));
//  PVector p = polar2cartesian(random(50, 300), random(0, TWO_PI));
//  line(width/2, height/2, p.x, p.y);
//}

// Polar to Cartesian coordinate conversion.
//
//PVector polar2cartesian(float radius, float theta) {
//  PVector p = new PVector(radius * cos(theta), radius * sin(theta));
//  return p;
//}
