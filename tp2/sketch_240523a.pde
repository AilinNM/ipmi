//declaracion de variables
int estado, contador;
int frameActual =0;
PImage im1, im2, im3, im4, im5, im6, im7, im8, im9, im10, pg1 ;
PImage playbttn;
PImage restartbttn;
PFont fTitulo;
float posX, posY, d;
float opacidadTexto = 255;
String texto1, texto2, texto3, texto4, texto5, texto6, texto7;


/////////////////////////////////////////////

void setup() {
  size(640, 480);
  posX = 640*2;
  posY = 320;
  contador=0;
  
  estado = 0;
  
  
  //CARGO IMAGENES
  playbttn = loadImage("playbutton.jpg");
  restartbttn = loadImage("restartbutton.jpg");
  im1 = redimensionImgAPantalla(loadImage("img1.jpg"), width, height);
  im2 = redimensionImgAPantalla(loadImage("img2.jpg"), width, height);
  im3 = redimensionImgAPantalla(loadImage("img3.jpg"), width, height);
  im4 = redimensionImgAPantalla(loadImage("img4.jpg"), width, height);
  im5 = redimensionImgAPantalla(loadImage("img5.jpg"), width, height);
  im6 = redimensionImgAPantalla(loadImage("img6.jpg"), width, height);
  im7 = redimensionImgAPantalla(loadImage("img7.jpg"), width, height);
  im8 = redimensionImgAPantalla(loadImage("img8.jpg"), width, height);
  im9 = redimensionImgAPantalla(loadImage("img9.jpg"), width, height);
  im10 = redimensionImgAPantalla(loadImage("img91.jpg"), width, height);
  pg1 = redimensionImgAPantalla(loadImage("img6.png"), width, height);
  
  //CARGO FUENTE
  fTitulo = loadFont("Rachana-Bold-48.vlw");
 
  //ESTABLECER FORMATO DE TEXTO
  textFont(fTitulo);
  textAlign (LEFT);
  
  
  
  //CARGO TEXTOS
  texto1="'Björk Digital' es una exposición de realidad virtual inmersiva creada por la icónica música islandesa. Esta innovadora obra presenta videos musicales en 360 grados de su octavo album de estudio, Vulnicura."; 
  texto2="La experiencia inmersiva que ofrece se logra a traves de varias técnicas y tecnologías avanzadas que colocan al publico en el centro de la narrativa emocional y visual de Björk.";
  texto3="Elementos y Técnicas: La exposición utiliza auriculares de realidad virtual Samsung Gear VR y HTC Vive, para explorar videos musicales en 360 grados del álbum Vulnicura, sumergiéndose en paisajes unicos y emotivos."; 
  texto4="Interacción y Educación: Además de los videos musicales, la exposición incluye un espacio educativo interactivo con instrumentos y aplicaciones personalizadas que Björk creó para su álbum de 2011, Biophilia. Este álbum fue pionero en el lanzamiento como una serie de aplicaciones interactivas que combinaban la música con la ciencia y la naturaleza.";
  texto5="Sala de Cine: La exposición también cuenta con una sala de cine que proyecta videoclips remasterizados de la carrera de Björk, realizados por renombrados directores como Michel Gondry y Spike Jonze. ";
  texto6="Impacto y Recepción Björk Digital ha sido elogiada por su capacidad de conectar profundamente con el público a través de la tecnología. Según James Merry, co-director creativo de la exposición, las reacciones emocionales de los visitantes han sido intensas, con personas que a menudo se toman de las manos, cantan juntas e incluso lloran dentro del espacio virtual";
}
  
/////////////////////////////////////////////

void draw() {

  background(0);
  fill(255);
  textSize(28);
  textAlign(CENTER, CENTER);
  fill(155);
  
 posX -= 2; 
   if (estado != 0){
     if (mouseY > height *2/3) {
                 posX = 70;
   } 
   if (posX <= -20){
    // Reinicia la posición del texto al lado derecho de la pantalla
        posX = 640;
       }
   }else{
     if (posX <= -640){
       posX = 640*2;
     } 
   } 
   

  
  if (estado==0) {
     
    image(playbttn, 0,0);
    fill(0);
    textSize(18);
    text("Bienvenido, utilice el click izquierdo para avanzar, el click derecho para retroceder, mantenga presionado para detener o espere y las diapositivas avanzaran automaticamente.", posX, height/8.5);
    text ("Pocisione el cursor en la parte inferior de la pantalla para mantener el texto quieto.", posX,height/6.5);
    textSize(38);
    text("Iniciar", width/2, height/1.2);
    fill(255);
    }
    else if (estado == 7) {
    image(restartbttn, 0, 0);
    fill(0);
    text("Reiniciar", width/2, height/1.2);
    fill(255);
    } else 
        if (estado==1){
         mostrarImagenCentrada(im1);  
         fill(255);
         textSize(18);
         textAlign(CENTER);
         text ( texto1, posX, posY, width/2, 335);
         contador++;
          if ( contador>=60*6 ) {
            //este es un cambio de estado:
            //estado 1  a  2
            estado++;
            contador = 0;
          }
       } else 
         if (estado == 2) {
            mostrarImagenCentrada(im2);
            fill(255);
            textSize(18);
            textAlign(CENTER);
            text ( texto2, posX, posY, width/2, 600);    
              contador++;
          if ( contador>=60*6 ) {
            //este es un cambio de estado:
            //estado 1  a  2
            estado++;
            contador = 0;
          }
          } else 
            if (estado == 3) {
            mostrarImagenCentrada(im3);
            fill(255);
             textSize(18);
             textAlign(CENTER);
            text ( texto3, posX, posY, width/2, 600); 
            contador++;
              if ( contador>=60*6 ) {
                //este es un cambio de estado:
                //estado 1  a  2
                estado++;
                contador = 0;
              }
             } else 
                 if (estado == 4) {
                  mostrarImagenCentrada(im4);
                  fill(255);
                  textSize(18);
                  textAlign(CENTER);
                  text ( texto4, posX, posY, width/2, 600); 
                  contador++;
                  if ( contador>=60*6 ) {
                    //este es un cambio de estado:
                    //estado 1  a  2
                    estado++;
                    contador = 0;
                  }
                    } else 
                    if (estado == 5) {
                      mostrarImagenCentrada(im5);
                     fill(255);
                     textSize(18);
                     textAlign(CENTER);
                      text ( texto5, posX, posY, width/2, 600); 
                     contador++;
                    if ( contador>=60*6 ) {
                      //este es un cambio de estado:
                      //estado 1  a  2
                      estado++;
                      contador = 0;
          }
                      } else 
                        if (estado == 6) {
                        mostrarImagenCentrada(im6);
                        fill(255);
                         textSize(18);
                         textAlign(CENTER);
                        text ( texto6, posX, posY, width/2, 600); 
                          contador++;
                        if ( contador>=60*6 ) {
                          //este es un cambio de estado:
                          //estado 1  a  2
                          estado++;
                          contador = 0;
          }
       }
     
   }



void mouseClicked() {
  if (mouseButton == LEFT) {
    if (estado == 7) { // Si se hace clic en "Reiniciar"
      estado = 1; // Reinicia a la escena 1
    } else {
      estado = estado + 1;
      posX=640;
      if (estado > 6) {
        estado = 7;
      }
    }
  } else if (mouseButton == RIGHT) {
    estado = estado - 1;
    if (estado < 1) {
      estado = 0;
    }
  }
}

PImage redimensionImgAPantalla(PImage img, int screenWidth, int screenHeight) {
  int imgWidth = img.width;
  int imgHeight = img.height;

  float imgAspect = float(imgWidth) / float(imgHeight);
  float screenAspect = float(screenWidth) / float(screenHeight);

  int newWidth, newHeight;

  if (imgAspect > screenAspect) {
    newWidth = screenWidth;
    newHeight = int(screenWidth / imgAspect);
  } else {
    newHeight = screenHeight;
    newWidth = int(screenHeight * imgAspect);
  }

  PImage resizedImg = img.copy();
  resizedImg.resize(newWidth, newHeight);
  return resizedImg;
}
void mostrarImagenCentrada(PImage img) {
  int imgWidth = img.width;
  int imgHeight = img.height;
  int x = (width - imgWidth) / 2;
  int y = (height - imgHeight) / 2;
  image(img, x, y);
}
  
  
  
