class Cabin {

  float x;
  float y;

  void draw_cabin() {

    stroke(160);
    fill(96);
    ellipse(400, 600, 800, 350);

    strokeWeight(6);
    stroke(192);
    fill(0);
    rect(120, 490, 120, 90, 10);

    noStroke();
    fill(0, 102, 51);
    rect(135, 500, 15, 10);
    fill(51, 255, 255);
    rect(160, 500, 15, 10);
    fill(255, 128, 0);
    rect(185, 500, 15, 10);
    fill(255, 51, 51);
    rect(210, 500, 15, 10);

    fill(96, 51, 51);
    rect(135, 525, 15, 10); 
    fill(51, 51, 255);
    rect(160, 525, 15, 10);
    fill(128, 128, 128);
    rect(185, 525, 15, 10);
    fill(255, 255, 0);
    rect(210, 525, 15, 10);

    fill(51, 255, 255);
    rect(135, 550, 15, 10);
    fill(255, 128, 0);
    rect(160, 550, 15, 10);
    fill(153, 51, 255);
    rect(185, 550, 15, 10);
    fill(0, 102, 51);
    rect(210, 550, 15, 10);
    
     strokeWeight(1);
    stroke(0);
    fill(150);
    rect(254, 480, 60, 15);
    
    strokeWeight(1);
    stroke(0);
    fill(0);
    rect(254, 500, 70, 80);
    
    fill(255);
    textSize(20);
    text("1", 270, 540); 
    
    stroke(0,0,255);
    noFill();
    rect(260, 520, 30, 28);
   
    
    
    
      
  }
  
}