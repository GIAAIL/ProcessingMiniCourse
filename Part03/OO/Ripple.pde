class Ripple {
  float locX, locY;
  float exp;
  float dia;
  float sw; // strokeWeight
  float op;  // opacity

  // Constructor
  Ripple(float w, float h) {
    locX = random(w);
    locY = random(h);
    exp = random(1, 3);
    dia = 0;
    sw = 10;
    op = 255;
  }

  // Display the ripple.
  void display() {
    noFill();
    stroke(255, op);
    strokeWeight(sw);
    circle(locX, locY, dia);
  }

  // Update the ripple.
  void update() {
    dia = dia + exp;
    sw = sw * 0.98;
    op = op * 0.98;
  }
}

class Ripple2 extends Ripple {
  Ripple2(float w, float h) {
    super(w, h);
  }
  
  void getDia() {
    println("My diameter is " + dia);
  }

  void display() {
    noFill();
    stroke(255, 150, 128, op);
    strokeWeight(sw);
    circle(locX, locY, dia);
  }
}
