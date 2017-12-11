import ddf.minim.*;


Space_field s;
Cabin  c;
Radar radar;
Minim minim;
AudioPlayer player;
AudioPlayer alarmSound;
Alarm alarm;
Clock clock;
 

void setup() {

  size (800, 600);
  background (0);
  stroke(255);
  //noCursor();
  minim = new Minim(this);

  s = new Space_field();
  c = new Cabin();
  radar = new Radar(width/2, height/1.16, 75, 0.5, 200);
  alarm = new Alarm(width/1.53, height/1.25, 75, 0.5, 200);
  clock = new Clock();
  player = minim.loadFile("outer-space-air.wav");
  alarmSound = minim.loadFile("alarm.mp3");
  
  
   
  
  
}
void draw () {

  background (0);
  noFill();
  strokeWeight(2);
  stroke(17, 255, 41);
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, 50, 50); 
  ellipse(mouseX, mouseY, 15, 15);
  ellipse(mouseX, mouseY, 5, 5);

  

  s.looping();
  c.draw_cabin();
  radar.display_Radar();
  radar.movement();
   alarm.movement1();
   alarm.display_Alarm();
  clock.draw_clock();
  clock.time();
   
 
  player.play();
  //player.rewind();

}