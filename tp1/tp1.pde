PImage mifoto;
int x=400;
void setup (){
  size (800,400);
  mifoto=loadImage("data/foto.png");

}

void draw (){
  background (255);
  image (mifoto, 0, 0, 400, 400);
  fill(255);
  textSize(16);
  text("X: " + mouseX + ", Y: " + mouseY, 20, 20);
 
  // Dibujar el rectángulo
  
  
  //rect(400+137, 207, 85, 138);   //cuello (mismo color sombra cara)
  

  //COLOR CARA
  beginShape();
  fill(237, 211, 177);
  noStroke(); // Sin líneas visibles
  //vertex (x + 228, 277);
//  bezierVertex (x + 240, 260, x + 268, 251, x + 286, 223); //cara derecha inferior
//  vertex(x + 309, 140);
//  bezierVertex(x + 312, 142, x + 295, 58, x + 285, 59); //frente der
  //vertex(x + 286, 223);
  //bezierVertex (x + 295, 203, x + 298, 162, x + 309, 140); //cachete der
  //vertex(x + 160, 234);
 //bezier (x+160,234,x+185,264,x+220,283,x+224,277); //menton izquierdo
//bezier(x+140,177,x+136,159,x+141,145,x+139,134); //linea pelo oreja izq
  //line(x+139,134,x+156,105); //
  
  //vertex(x+212,278);
  //bezierVertex(x + 185, 243, x + 165, 235, x + 169, 126);
  //vertex(x+162,70);
 //vertex(571,73);
  //ezierVertex(x+169,80,x+161,55,x+212,55);//entrada izq
  //vertex(x+212,55);
  //bezierVertex(x+215,55,x+240,55,x+257,65);//nacimiento pelo frente
  //vertex(x+257,65);
  //bezierVertex(x+260,63,x+275,55,x+285,59);//entrada der
  //vertex
  endShape();
  
  fill(255,255,255);
  //CARA LINEAS
  stroke(0);
  bezier (x+227,279,x+247,263,x+268,251,x+286,223); //cara derecha inferior
  bezier (x+309, 140, x+312,142,x+305,58,x+285,59); //frente der
  bezier (x+286,223,x+295,203,x+298,162,x+309,140); //cachete der
  bezier (x+160,234,x+185,264,x+220,283,x+227,279); //menton izquierdo
  bezier(x+140,177,x+136,159,x+141,145,x+139,134); //linea pelo oreja izq
  line(x+139,134,x+156,105); //
  bezier(x+156,105,x+169,80,x+160,55,x+212,55);//entrada izq
  bezier(x+212,55,x+215,55,x+240,55,x+257,65);//nacimiento pelo frente
  bezier(x+257,65,x+260,63,x+275,55,x+285,59);//entrada der
  stroke(0);
  
  

  //OJO DERECHO
  line(x+309,140,x+280,143); //ceja der
  line(x+280,143,x+270,141); // ceja der
  line (x+270,141,x+267,137); // ceja der
  stroke(0);

  line (x+257, 162, x+257, 160); //linea nariz
  line(x+257,160,x+263,150); //linea nariz sup
  stroke(0);

  bezier (x+266,149,x+266,151,x+270,146,x+276,146); //parpado izq
  bezier (x+276,146,x+280,146,x+294,154,x+294,155); //parpado der
  stroke(0);

  line (x+271,156,x+285,158); //linea parpado (cortita sup)
  line (x+268,158,x+293,162); //linea parpado
  bezier (x+266,165,x+266,165,x+280,173,x+291,167); //linea parp inf
  line (x+268,171,x+271,167); //pestania inf
  line(x+265,167,x+266,166); //p.i
  line(x+279,172,x+278,170); //p.i
  line(x+287,172,x+284,170); //p.i
  line(x+291,170,689,169); //p.i
  arc (x+279,162,12,8,radians(-360),radians(-180));//iris
  arc (x+279,161,8,5,radians(-360),radians(-180));
    stroke(0);

  //OJO IZQUIERDO
  //x+168,126 vertex para sombra
  line (x+239,130,x+230,136); //ceja
  line (x+230,136,x+211,137);//ceja
  line (x+211,137,x+196,135);//ceja
  line(x+196,135,x+170,126);//ceja
    stroke(0);

  bezier(x+219,146,x+217,145,x+211,134,x+205,137);//parpado sup der
  bezier(x+198,137,x+199,136,x+179,141,x+179,143);//parpado sup iz
    stroke(0);

  arc (x+202,154,14,11,radians(-360),radians(-180));//iriz
  arc (x+202,153,8,7,radians(-360),radians(-180));
    stroke(0);

  bezier(x+212,151,x+211,150,x+190,149,x+189,148); //linea corta parpado
  line(x+178,150,x+219,154); //linea larga parpado
    stroke(0);

  line(x+178,150,x+174,152);//caida del parpado iz
  bezier(x+178,157,x+188,162,x+204,167,x+214,160); // parpa inf
  line(x+212,163,x+213,164); //pestanias inferiores
  line (x+207,164,x+208,165);
  line (x+204,166,x+203,164);
  line(x+189,161,x+188,163);
  line(x+178,157,x+177,159);
  line(x+181,163,x+183,160);
    stroke(0);

  //LINEAS AZULES
  stroke(21,28,155);
  line(x+163,165,x+163,144);
  line(x+167,170,x+167,138);
  bezier(x+174,173,x+172,169,x+174,130,x+175,129);
  
  line(x+178,172,x+178,158);
  line(x+178,149,x+179,129);
  
  line(x+181,169,x+181,159);
  line(x+182,150,x+183,130);
  line(x+187,172,x+187,161);  
  line(x+187,150,x+187,132);
  
  stroke(0);
  line(x+173,178,x+167,192);
  line(x+173,178,x+175,192);
  arc(x+171,191,8,11,radians(-360),radians(-180));

  stroke(0);
  //BOCA
  line(x+216,225,x+231,221);//labios
  bezier(x+231,221,x+232,222,x+238,223,x+244,223);
  line(x+244,223,x+248,226);
  line(x+248,226,x+244,230);
  
  bezier(x+244,223,x+247,228,x+233,244,x+232,242);//lengua
  bezier(x+232,242,x+222,240,x+219,226,x+218,225);
  stroke(0);

  
  //NARIZ
  bezier (x+258,199,x+257,197,x+255,183,x+256,180); //linea superior
  bezier (x+257,204,x+258,207,x+247,211,x+249,212); //linea inferios
  line (x+237,210,x+240,206); // linea de fosa nasal
 
  stroke(0);

  
  //CUELLO
  line(x+221,279,x+220,294);//linea cuello der
  line(x+137,207,x+141,277);//linea cuello izq
    
  stroke(0);


  stroke(0);

  bezier(x+221,280,x+250,287,x+234,329,x+234,336);
  line(x+234,336,x+238,376);
  line(x+220,294,x+228,291);
  bezier(x+238,376,x+219,383,x+200,387,x+191,386);
  
  bezier(x+220,294,x+198,296,x+163,275,x+141,277);//cuello swtr
  bezier(x+140,277,x+139,277,x+123,273,x+123,267);
  bezier(x+113,270,x+111,260,x+127,255,x+140,257);
  bezier(513,270,x+110,275,x+118,303,x+114,310);
  bezier(x+114,308,x+112,317,x+105,349,x+108,357);
  bezier(x+108,358,x+111,364,x+160,371,x+191,386);
  
  //lineas
  bezier(x+227,293,x+233,302,x+220,333,x+229,379.7);
  line(x+209,294,x+212,300);
  bezier(x+212,300,x+200,353,x+215,378,x+209,384);
  bezier(x+189,289,x+175,295,x+186,359,x+186,384);
  line(x+158,374,x+155,366);
  bezier(x+163,280,x+148,293,x+164,351,x+155,366);
  bezier(x+139,277,x+128,286,x+129,360,x+132,367);
  bezier(x+123,267,x+117,273,x+124,293,x+116,361);
  bezier(x+128,258,x+129,260,x+132,265,x+131,273);
  
  //hombros y mochila
  bezier(x+245,367,x+269,364,x+282,367,x+282,367);
  bezier(x+282,367,x+286,367,x+293,381,x+299,399);
  bezier(x+261,372,x+269,373,x+274,385,x+283,399);
  line(x+265,363,x+277,358);
  line(x+277,358,x+301,365);
  bezier(x+301,365,x+305,369,x+308,384,x+317,399);
  bezier(x,383,x+16,385,x+33,368,x+106,351);
  bezier(x+237,361,x+237,361,x+255,375,x+269,378);
  line(715,393,x+342,399);
  
    stroke(0);
  
  //PELO
  bezier(x+306,97,x+314,88,x+299,35,x+294,42);
  bezier(x+269,26,x+273,25,x+283,36,x+295,41);
  bezier(x+269,26,x+199,9,x+167,6,x+114,54);
  bezier(x+114,54,x+93,108,x+93,115,x+106,181);
  
  bezier(x+98,143,x+79,148,x+67,145,x+62,133); //rulos
  bezier(x+62,133,x+47,131,x+18,137,x+4,131);
  bezier(x+4,131,x+2,121,x+14,106,x+26,97);
  bezier(x+26,97,x+16,85,x+14,67,x+20,55);
  bezier(x+20,55,x+15,42,x+18,31,x+24,25);
  bezier(x+24,25,x+19,20,x+19,10,x+15,-2);
  bezier(x+257,21,x+257,15,x+255,16,x+255,12);
  line(x+254,13,x+258,5);
  bezier(x+258,5,x+266,6,x+268,2,x+277,0);
  
  //OREJA
  bezier(x+148,220,x+145,218,x+144,209,x+143,208);
  bezier(x+143,208,x+143,208,x+139,204,x+137,206);
  bezier(x+137,206,x+137,204,x+130,206,x+129,204);
  bezier(x+123,203,x+117,194,x+110,185,x+108,184);
  bezier(x+128,198,x+128,197,x+132,201,x+131,202);
  bezier(x+123,203,x+123,202,x+127,197,x+128,198);
  bezier(x+130,202,x+130,202,x+123,210,x+125,212);
  bezier(x+123,203,x+121,205,x+118,215,x+122,217);
  bezier(x+125,213,x+126,211,x+131,208,x+130,206);
  bezier(x+123,217,x+124,219,x+133,210,x+133,206);
  bezier(x+108,183,x+100,168,x+105,158,x+106,156);
  bezier(x+106,156,x+107,154,x+113,143,x+115,146);
  bezier(x+115,146,x+117,143,x+129,148,x+132,154);
  bezier(x+132,154,x+132,152,x+135,168,x+139,174);
  bezier(x+131,195,x+120,191,x+122,180,x+118,182);
  bezier(x+118,182,x+115,179,x+118,175,x+115,170);
  bezier(x+120,175,x+118,168,x+123,159,x+128,165);
  bezier(x+135,194,x+136,178,x+129,187,x+130,171);
  bezier(x+130,171,x+127,163,x+123,153,x+120,155);
  bezier(x+124,158,x+119,158,x+115,156,x+112,166);
  bezier(x+119,155,x+117,154,x+113,156,x+112,169);
  

    stroke(0);

 

//rect(400+165, 18, 104, 38); 
}
  
