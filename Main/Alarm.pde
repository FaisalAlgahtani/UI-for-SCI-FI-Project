class Alarm {


  float position_x;
  float position_y;
  float radius;
  float angle;
  float speeding;
  float frequency;
  float Color;
  
  Alarm(float position_x, float position_y, float radius, float frequency,float Color)
  {
    this.position_x = position_x;
    this.position_y = position_y;
    this.radius = radius;
    this.angle = 0;
    this.frequency = frequency;
    this.speeding = (TWO_PI/20.0) * frequency;
    this.Color = Color;
  }

  void movement1()
  {
    angle = angle + speeding;
  }
  
  void display_Alarm()
  {
    strokeWeight(3);
    stroke(0);
    fill(255,0,0);
    ellipse(position_x, position_y, radius*0.8, radius*0.8);
    
      fill(255);
      text("ALARM", 490, 535);
      
      
    
if (mousePressed == true) {
    float radar_rotation = 18;
    float line_brightness = 800;
    strokeWeight(2);
    
    for(int i = 0; i < radar_rotation; i++)
    {
      stroke(255, 255, 0, line_brightness-(i*( line_brightness/radar_rotation)));
      float x = position_x + sin(angle - i * speeding) * radius/2.7;
      float y = position_y - cos(angle - i * speeding) * radius/2.7;
      line(position_x, position_y, x, y);
      
      alarmSound.play();
        
     
      //alarmSound.loop();
    }
    
    
} 
else {
     alarmSound.pause();
    fill(255,0,0);
  }



  }
} 
  