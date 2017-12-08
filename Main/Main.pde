
Space_field s;


void setup() {

  size (800, 600);
  background (0);
  stroke(255);
  noCursor();
  s = new Space_field();
}


void draw () {
  background (0);

  s.draw_triangle();
  s.draw_rect();
  s.ellipse_draw();
  s.looping();
}