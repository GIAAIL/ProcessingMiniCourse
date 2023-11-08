// Golden angle in sunflower

int radius = 12;
int scale = 10;

double PHI = PI * (-1 + sqrt(5));

int r = 255;
int g = 255;
int b = 0;

int n = 0;    // Number of loops
double a = 0;  // Angle

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  if (b >= 255) {
    noLoop();
    return;
  } else if (g > 0) {
    g--;
  } else if (r > 0) {
    r--;
  } else {
    b++;
    radius = int(12 - 6 * (b/255.0));
  }

  double h = sqrt(n) * scale;
  double x = width/2 + Math.sin(a) * h;
  double y = height/2 + Math.cos(a) * h;
  a += PHI;
  stroke(0);
  fill(r, g, b);
  ellipse((float) x, (float) y, radius, radius);

  n++;
}
