import processing.sound.*;



Space_field s;
Cabin  c;
Radar radar;



void setup() {

    size (800, 600);
    background (0);
    stroke(255);
    noCursor();
    
    s = new Space_field();
    c = new Cabin();
    radar = new Radar(width/2, height/1.16, 75, 0.5 , 200);
}
void draw () {
  
    background (0);
    noFill();
    stroke(17,255, 41);
    ellipseMode(CENTER);
    ellipse(mouseX, mouseY, 50, 50); 
    ellipse(mouseX, mouseY, 15, 15);
    ellipse(mouseX, mouseY, 5, 5);

  
     s.looping();
     c.draw_cabin();
     radar.display_Radar();
     radar.movement();
     
    
     
}