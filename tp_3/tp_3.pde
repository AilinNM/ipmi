//https://youtu.be/kC2KGZsK8OU
PImage mifoto;
int cantX = 7;
int cantY = 7;
int x=400;
float diam ;
color bordes = color (110,149,103);
color fondo = color (198,30,24);


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
      fill(fondo);
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
      stroke(bordes);
      ellipse(x+i*modX+modX/2, j*modY+modY/2, diam ,diam);
}

void mousePressed() {
  cantX++;
  cantY++;
}

int colorInteractivo (int pos){
  return (height-pos);
}

void mouseClicked(){
  int color1=colorInteractivo (mouseY);
  int color2=colorInteractivo (mouseX);
  bordes = color (random(color1),random(100),50);
  fondo = color(random (color2),random(100),random(256));
}

void keyPressed() {
  cantX = cantX+10;
  cantY= 100/2;
}

void keyReleased(){
  cantX = 7;
  cantY= 7;
  bordes = color (110,149,103);
  fondo = color (198,30,24);
}
