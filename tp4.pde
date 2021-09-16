
//https://youtu.be/07XvnlSoTj8

import ddf.minim.*;
Minim gtav;
Minim bodax;
Minim sonido2;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;
PImage[] imagenes = new PImage [15]; //carga
String estado;
boolean CreditosComenzar, NoGrita, NoSube, cinturonSiNo, perdonSiNo, siguienteI, siguienteII, CreditosReinicio1, siguienteIII, boda, fin, CreditosReinicio2, CreditosReinicio3, CreditosReinicio4, CreditosReinicio5;
int px, py;
PFont fuente;
PFont fuente2;
float y;
void setup() {
  size(500, 300); //dimensionar todo mas grande la proxima
  inicializarvariables();
  gtav = new Minim(this);
  player=gtav.loadFile("gtav.wav");
  bodax = new Minim(this);
  player2=bodax.loadFile("bodax.wav");
  sonido2 = new Minim(this);
  player3=sonido2.loadFile("sonido2.mp3");
  y=300;
}


void draw() {
  //println(mouseX);
  //println(mouseY);

  fuente=loadFont("Inter-Regular-48.vlw");
  fuente2=loadFont("Inter-SemiBold-14.vlw");


  if (estado == "presentacion") {
    image(imagenes[0], 0, 0);
    CreditosComenzar=true;
    texto( "Comenzar", fuente2, 14, color(0), 108, 271 );
    texto ("Creditos", fuente2, 14, color(0), 318, 271);
  } else if (estado == "montañarusa") {
    image(imagenes [2], 0, 0);
    NoSube=true;
    texto( "Se sube", fuente2, 14, color(0), 114, 271 );
    texto ("No se sube", fuente2, 14, color(0), 307, 271);
  }

  if (estado == "acasa") {
    image(imagenes[1], 0, 0);
    CreditosReinicio1=true;
    texto( "Reiniciar", fuente2, 14, color(0), 113, 271 );
    texto ("Creditos", fuente2, 14, color(0), 318, 271);
    player3.play();
  }

  if (estado == "subeaMR") {
    image(imagenes[3], 0, 0);
    cinturonSiNo=true;
    texto( "Se ajusta \nel cinturon ", fuente2, 14, color(0), 107, 263 );
    texto ("No se ajausta \nel cinturon ", fuente2, 14, color(0), 304, 263);
  }

  if (estado == "arrancaMR") {
    image(imagenes[4], 0, 0);
    NoGrita=true;
    texto( "Quiere gritar", fuente2, 14, color(0), 100, 271 );
    texto ("No quiere gritar", fuente2, 14, color(0), 295, 271);
  }



  if (estado == "mosca") {
    image(imagenes[5], 0, 0);
    siguienteII=true;
    texto ("Siguiente", fuente2, 14, color(0), 316, 271);
  }

  if (estado == "volando") {
    image(imagenes[6], 0, 0);
    siguienteI=true;
    texto ("Siguiente", fuente2, 14, color(0), 316, 271);
    player.play();
  }

  if (estado == "muereI") {
    image(imagenes[7], 0, 0);
    CreditosReinicio2=true;
    texto( "Reiniciar", fuente2, 14, color(0), 113, 271 );
    texto ("Creditos", fuente2, 14, color(0), 318, 271);
  }

  if (estado == "vomita") {
    image(imagenes[8], 0, 0);
    perdonSiNo=true;
    texto( "Pide perdon", fuente2, 14, color(0), 99, 270 );
    texto ("Se rie", fuente2, 14, color(0), 326, 270);
  }

  if (estado == "novios") {
    image(imagenes[9], 0, 0);
    boda=true;
    texto ("Siguiente", fuente2, 14, color(0), 316, 271);
  }

  if (estado == "muereII") {
    image(imagenes[11], 0, 0);
    CreditosReinicio4=true;
    texto( "Reiniciar", fuente2, 14, color(0), 113, 271 );
    texto ("Creditos", fuente2, 14, color(0), 318, 271);
    player.play();
  }


  if (estado == "muereIII") {
    image(imagenes[12], 0, 0);
    CreditosReinicio3=true;
    texto( "Reiniciar", fuente2, 14, color(0), 113, 271 );
    texto ("Creditos", fuente2, 14, color(0), 318, 271);
    player.play();
  }



  if (estado == "pelea") {
    image(imagenes[10], 0, 0);
    siguienteIII=true;
    texto ("Siguiente", fuente2, 14, color(0), 316, 271);
  }

  if (estado == "boda") {
    image(imagenes[13], 0, 0);
    CreditosReinicio5=true;
    texto( "Reiniciar", fuente2, 14, color(0), 113, 271 );
    texto ("Creditos", fuente2, 14, color(0), 318, 271);
    player2.play();
  }

  if (estado == "creditos") {
    background(0);
    image(imagenes[14], 0, 0);
    textFont(fuente);
    fill(0);
    textSize(20);
  
    text ("               ACTORES:\n Joe como Joe \n Melisa como Melisa\n DIRECTOR: Mercedes \n PRODUCTOR: Mercedes  \n GUIONISTA: Mercedes  \n CAMAROGRAFO: Mercedes", 130, y);
y--;
}
  
}
boolean botones (int px1, int px2, int py1, int py2) {
  if (mouseX >= px1 && mouseX <=px2 && mouseY>=py1 && mouseY <=py2) {
    return true;
  } else {
    return false;
  }
}
void mousePressed () {
  funciones();
}
