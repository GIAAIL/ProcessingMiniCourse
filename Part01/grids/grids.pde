// Defining global variables.
//
boolean GRIDS_ON, CURSOR_ON; // Flags for drawing status.
int GRID_MINOR, GRID_MAJOR;

// Setting up environment and canvas.
//
void setup() {
  size(600, 600);  // Canvas size.
  // Initial value for global variables
  GRIDS_ON = true;
  GRID_MINOR = 20;
  GRID_MAJOR = 100;
  CURSOR_ON = true;
  // Drawing mode for ellipse/circle/arc.
  ellipseMode(CENTER);
}

// Drawing loop
//
void draw() {
  background(0);  // Clear the canvas with black.
  // Calling drawing functions depends on global flags.
  if (GRIDS_ON) draw_background_grids();
  if (CURSOR_ON) draw_cursor();
}

// Draw background grid lines.
//
void draw_background_grids() {
  for (int i = 0; i < width; i += GRID_MINOR) {
    if (i % GRID_MAJOR == 0) {
      stroke(150);
    } else {
      stroke(75);
    }
    line(i, 0, i, height);
  }
  for (int i = 0; i < height; i += GRID_MINOR) {
    if (i % GRID_MAJOR == 0) {
      stroke(150);
    } else {
      stroke(75);
    }
    line(0, i, width, i);
  }
}

// Draw cursor and text label.
//
void draw_cursor() {
  fill(255);
  circle(mouseX, mouseY, 10);
  fill(255);
  textSize(18);
  String label = "(" + mouseX + ", " + mouseY + ")";
  text(label, mouseX+10, mouseY+10);
}

// Handler for keyboard events.
void keyPressed() {
  switch (key) {
    case 'c': CURSOR_ON = !CURSOR_ON; break;
    case 'g': GRIDS_ON = !GRIDS_ON; break;
  }
}
