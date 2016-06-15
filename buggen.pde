float inc;



void setup(){
  size(600,600);
  fill(0);
  noStroke();
  inc =.08;
  frameRate(10);
  noLoop();
  
}

void draw() {
 
  background(255);
  translate(width/2,height/3);
  scale(2);
  bug(0,0);
  
  
}

void bug (int x, int y) {
  int hd = int(random(5,10));      // head sizes are smallish
  int th = int(random(hd,2*hd));
  int ab = int(random(2*th,4*th));
  
  fill(0,255);
  
  head (x, y - (th/2+hd), hd);      // a good spot for the head
  thorax (x,y, th);
  abdomen (x , y+(th/2+ab), ab);

  
  
  
  
}

void head(float x, float y, int hd) {
  float rad, myScale;
  for (int i=-hd; i < hd; i++) {
    rad = sqrt(hd*hd-i*i);
    myScale = noise(i*2*inc+hd);
    ellipse(x,i+y,3*rad*myScale,2);
  }
}

void abdomen(float x, float y, int ab) {
  float rad, myScale;
  for (int i=-ab; i < ab; i++) {
    rad = sqrt(ab*ab-i*i);
    myScale = noise(i*.02+ab);
    ellipse(x,i+y,2*rad*myScale,4);
  }
}

void thorax(float x, float y, int th) {
  float rad, myScale;
  for (int i=-th; i < th; i++) {
    rad = sqrt(th*th-i*i);
    myScale = noise(i*.04+th);
    ellipse(x,i+y,4*rad*myScale,3);
  }
}
