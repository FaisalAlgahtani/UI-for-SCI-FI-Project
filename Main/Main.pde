/**
  Student name: Faisal Algahtani
  ID: D15125895
  
*/


// adding minim library
import ddf.minim.*;

// declare variables for images
PImage sata;
PImage earth;

// declare variables for class
Space_field s;
Cabin  c;
Radar radar;
Minim minim;
AudioPlayer player;
AudioPlayer alarmSound;
Alarm alarm;
Clock clock;
Images image;

void setup() {

   // set the screen size and background color
   size (800, 600);
   background (0);
   stroke(255);
 
      //initializing functions
      minim = new Minim(this);
      s = new Space_field();
      c = new Cabin();
      radar = new Radar(width/2, height/1.16, 75, 0.5, 200);
      alarm = new Alarm(width/1.53, height/1.25, 75, 0.5, 200);
      clock = new Clock();
      player = minim.loadFile("Space.mp3");
      alarmSound = minim.loadFile("alarm.mp3");
      image = new Images();  
      sata = loadImage("Satellite.png");
      earth = loadImage("Earth.png");
     
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


    // call functions from classes
      s.looping();
      c.draw_cabin();
      radar.display_Radar();
      radar.movement();
      alarm.movement1();
      alarm.display_Alarm();
      clock.draw_clock();
      clock.time();
      image.display(); 
      // call function to play the background sound
      player.play();
      

}