// Object orientation programming (OOP)
ArrayList<Ripple> ripples = new ArrayList<Ripple>();
int amount = 20;

void setup() {
  size(800, 600);
  for (int i = 0; i < amount; i++) {
    ripples.add(new Ripple(width, height));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < ripples.size(); i++) {
    Ripple r = ripples.get(i);
    r.display();
    r.update();
  }
  if (random(1.0) > 0.9) {
    ripples.add(new Ripple(width, height));
  }
  if (random(1.0) > 0.95) {
    ripples.add(new Ripple2(width, height));
  }

}
