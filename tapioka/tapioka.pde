  float tapi_x,tapi_y,tapi_r;
  int gravity = 5;
  float a,angle;
  
  void setup(){
    tapi_x = width/2;
    tapi_y = height/2;
    tapi_r = 30;
  }

  void draw(){
    background(232,211,202);
    if (a>random(0,5)) {
      a-=0.1;
      }else{
        a+=0.1;
      }
      angle+=0.1;
      tapi_x = width/2+a*cos(angle);
      tapi_y = height/2+a*sin(angle);

    fill(0);
    stroke(255);
    strokeWeight(1);
    ellipse(tapi_x,tapi_y,tapi_r,tapi_r);
    if(mousePressed && tapi_r*tapi_r > (mouseX-tapi_x)*(mouseX-tapi_x+(mouseY-tapi_y)*(mouseY-tapi_y))){
        tapi_r += 3;
        mousePressed = false;
    }
    if(width<tapi_r||height < tapi_y+tapi_r){
      tapi_r = 30;
      tapi_y = height/2;
    }
  }
