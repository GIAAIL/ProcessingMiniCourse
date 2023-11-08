// Example 1: Mondrian layout
// by June-Hao Hou
//
void setup() {
  size(600, 600);
  rectMode(CORNERS);  // rectMode set to corners.
  background(255);
  strokeWeight(10);
  stroke(0);
  noLoop();
}

void draw() {
  float x0 = width * 0.0;
  float x1 = width * 0.125;
  float x2 = width * 0.25;
  float x3 = width * 0.375;
  float x4 = width * 0.625;
  float x5 = width * 0.75;
  float x6 = width * 0.875;
  float x7 = width * 1.0;
  
  float y0 = height * 0.0;
  float y1 = height * 0.125;
  float y2 = height * 0.375;
  float y3 = height * 0.625;
  float y4 = height * 0.75;
  float y5 = height * 0.875;
  float y6 = height * 0.9375;
  float y7 = height * 1.0;
  
  color cw = color(255);     // White
  color cgy = color(210);    // Grey
  color cr = color(211, 35, 35);  // Red
  color cy = color(250, 235, 10); // Yellow
  color cb = color(40, 64, 180);  // Blue
  color cbk = color(0);      // Black
  
  rectMondrian(x0, y0, x2, y1, cgy); // A
  rectMondrian(x2, y0, x4, y1, cw);  // B
  rectMondrian(x4, y0, x6, y1, cy);  // C
  rectMondrian(x6, y0, x7, y4, cw);  // D
  rectMondrian(x0, y1, x1, y2, cw);  // E
  rectMondrian(x1, y1, x4, y3, cr);  // F
  rectMondrian(x4, y1, x6, y2, cy);  // G
  rectMondrian(x0, y2, x1, y4, cgy); // H
  rectMondrian(x4, y2, x5, y3, cw);  // I
  rectMondrian(x5, y2, x6, y3, cw);  // J
  rectMondrian(x1, y3, x3, y5, cbk); // K
  rectMondrian(x3, y3, x4, y4, cgy); // L
  rectMondrian(x4, y3, x6, y4, cw);  // M
  rectMondrian(x0, y4, x1, y7, cy);  // N
  rectMondrian(x3, y4, x4, y5, cgy); // O
  rectMondrian(x4, y4, x6, y6, cb);  // P
  rectMondrian(x6, y4, x7, y7, cr);  // Q
  rectMondrian(x1, y5, x3, y7, cgy); // R
  rectMondrian(x3, y5, x4, y6, cbk); // S
  rectMondrian(x3, y6, x6, y7, cw);  // T
}

// Draw a Mondrian rectangle with color.
void rectMondrian(float ax, float ay, float bx, float by, color c) {
  fill(c);
  rect(ax, ay, bx, by);
}
