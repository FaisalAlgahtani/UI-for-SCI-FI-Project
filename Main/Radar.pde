class Radar
{
  float position_x;
  float position_y;
  float radius;
  float angle;
  float speeding;
  float frequency;
  float Color;
  
  Radar(float position_x, float position_y, float radius, float frequency,float Color)
  {
    this.position_x = position_x;
    this.position_y = position_y;
    this.radius = radius;
    this.angle = 0;
    this.frequency = frequency;
    this.speeding = (TWO_PI/90.0) * frequency;
    this.Color = Color;
  }

  void movement()
  {
    angle = angle + speeding;
  }
  
  void display_Radar()
  {
    strokeWeight(2);
    stroke(0, 255, 0, Color);
    fill(0);
    ellipse(position_x, position_y, radius*1.9, radius*1.9);
    float radar_rotation = 255/4;
    float line_brightness = 300;
    strokeWeight(1);
    
    for(int i = 0; i < radar_rotation; i++)
    {
      stroke(0, 255, 0, line_brightness-(i*( line_brightness/radar_rotation)));
      float x = position_x + sin(angle - i * speeding) * radius / 1.1;
      float y = position_y - cos(angle - i * speeding) * radius /1.1;
      line(position_x, position_y, x, y);
    }
  }
 
  
}