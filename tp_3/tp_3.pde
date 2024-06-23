//https://youtu.be/Ud7Bm8CBJUI
PImage mifoto;
int cantX = 7;
int cantY = 7;
int x=400;
float diam ;
void setup() {
  size(800, 400);
  mifoto=loadImage("data/F_4.jpg");
}
void draw() {
  
  image (mifoto, 0, 0, 400, 400);
  dibujaGrilla();
}

void dibujaGrilla(){
 float modX = x/cantX;
  float modY = x/cantY;
  for ( int j=0; j<cantY; j++) {
    for ( int i=0; i<cantX; i++) {
      fill(198,30,24);
      noStroke();
      rect(400+i*modX, j*modY, modX, modY);
      
      if ( (i+j)%2==0 ){
        strokeWeight (1); 
      } else  {
       strokeWeight (3); 
      }
             circulos(i,j,modX,modY);
    }
  } 
}

void circulos(int i, int j, float modX, float modY){
   diam= dist( i, j, modX/2.3, modY/2.3);
      noFill();
      stroke(110,149,103);
      ellipse(x+i*modX+modX/2, j*modY+modY/2, diam,diam);
}

void mousePressed() {
  cantX++;
  cantY++;
}


void keyPressed() {
  cantX = cantX+10;
  cantY= 100/2;
}

void keyReleased(){
  cantX = 7;
  cantY= 7;
}
