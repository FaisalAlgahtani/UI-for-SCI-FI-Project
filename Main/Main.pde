
Space_field s;
Cabin  c;

void setup() {

  size (800, 600);
  background (0);
  stroke(255);
  noCursor();
  s = new Space_field();
  c = new Cabin();
}


void draw () {
  background (0);

  s.draw_triangle();
  s.looping();
  c.draw_cabin();
  c.ellipse_draw();
}