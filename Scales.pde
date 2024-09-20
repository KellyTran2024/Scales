void setup() {
  size(800,800);  
  background(19,34,72);  
  //noLoop();  
}


void draw() {
 /* shootingStar(250,250,40);
  shootingStar(500,250,40);
  shootingStar(250,500,40);
  shootingStar(500,500,40);
  */
    for (int y = 0; y <1500; y += 63) {
    for (int x = 0; x < 1500; x +=63) {
     shootingStar(x,y,30);
    }
   }
}
void shootingStar(float x, float y, float starSize) {  
  fill(255,255,255);
  noStroke();
  star(x,y,starSize,starSize/4, 12);  
  noFill();
  double dRandom = Math.random();
  if(dRandom <0.25)
  {
  fill(36,56,112);
  }
  else if(dRandom<0.25)
  {
   fill(101,45,135); 
  } else { 
    fill(234,66,139);
  }  
  stroke(0,0,0);
  //noStroke();  
  star(x,y,starSize,starSize/2, 8);  
}

void star(float x, float y, float outerRadius, float innerRadius, int edgesIdk) {
  float angle = TWO_PI/edgesIdk;
  float halfAngle = angle/2.0;
  
  beginShape();
  for (float a=0; a< TWO_PI; a += angle){
    float sx= x+cos(a)*outerRadius;
    float sy= y+sin(a) *outerRadius;
    vertex(sx, sy);
      sx = x+ cos(a+halfAngle)* innerRadius;
      sy = y+ sin(a+ halfAngle)* innerRadius;
      vertex(sx, sy);
  }
  endShape();
}


