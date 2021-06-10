
color rojo;
color blanco;
PFont Fuente1;
PFont Fuente2;
float tt;
PImage Fondo;
PImage Fondo2;
float Agrand;
int suma;
int suma2;
int suma3;
float sumaa;
float Grande;
float variablet;
float variables;

void setup() { //------------------
  frameRate (25); //***
  size (500, 500);
  //variables
  rojo = color(#CD1815);
  blanco = color (#FFFFFF);
  Fuente1 = loadFont ("BenguiatBold-48.vlw");
  Fuente2 = loadFont ("Kontora-Black-48.vlw");
  Fondo = loadImage("degradee.jpg");
  Fondo2 = loadImage ("degradeR.jpg");
  Agrand = 250.0;

  tt = 0.0;
  suma = 0;
  suma2 = 0;
  suma3 = 0;
  sumaa = 166.6;
  Grande = 200.0;
  variablet = 600;
  variables = 0;

  background(0, 0, 0);
}
void draw() { //-------------------
  println( "contador: " + frameCount );  


  if ((frameCount>0) && (frameCount<700)) {
    background (0, 0, 0);
    textFont(Fuente1);
    textSize(200);
    fill(rojo);
    textAlign(CENTER);
    text ("GER  TH", height/3, frameCount );
  }

  if ((frameCount>170) && (frameCount<700)) {
    textFont(Fuente1);
    textSize(200);
    fill(rojo);
    textAlign(CENTER);
    text ("RA  H", sumaa, suma );

    suma ++;
    sumaa +=0.5;
  }

  if ((frameCount>340) && (frameCount<700)) {
    textFont(Fuente1);
    textSize(200);
    fill(rojo);
    textAlign(CENTER);
    text ("SN   T", height/3, suma2 );
    suma2 ++;
  }

  if ((frameCount>510) && (frameCount<700)) {
    textFont(Fuente1);
    textSize(Grande);
    fill(rojo);
    textAlign(CENTER);
    text ("  GS", height/2, suma3 );
    suma3 ++;
    Grande +=0.5;
  }











  if ((frameCount>20) && (frameCount<130)) {

    textFont(Fuente2);
    textSize (10);
    fill(blanco);

    textAlign (CENTER);
    text ("GATEN MATARAZZO", height/2, width/2);
    text ("CALEB MCLAUGHLIN", height/2, 300);
  }
  if ((frameCount>160) && (frameCount<260)) { //arreglar sumas entre ellos 120 dif 30
    textFont (Fuente2);
    textSize (10);
    fill (blanco);
    textAlign (CENTER);
    text ("NATALIA DYER", height/2, width/2);
    text ( "CHARLIE HEATON", height/2, 300);
    text("Y", random (500), random(500));
  }
  if ((frameCount>300) && (frameCount<400)) {
    textFont (Fuente2);
    textSize (7);
    fill (blanco);
    textAlign (CENTER);
    text("Co-Executive Producer", height/2, width/2);
    textSize (10);
    fill (blanco);
    textAlign (CENTER);
    text("IAIN PAT   RSON", height/2, 270); 
    text("E", mouseX, mouseY);
  }
  if ((frameCount>430) && (frameCount<530)) {
    textFont (Fuente2);
    textSize (7);
    fill (blanco);
    textAlign (CENTER);
    text("Executive Producer", height/2, width/2);
    textSize (10);
    fill (blanco);
    textAlign (CENTER);
    text("KARL GAJDUSEK", height/2, 270);
  }
  if ((frameCount>560) && (frameCount<660)) {
    textFont (Fuente2);
    textSize (7);
    fill (blanco);
    textAlign (CENTER);
    text ("Created By", height/2, width/2);
    textSize (10);
    fill (blanco);
    textAlign (CENTER);
    text("THE DUFFER BROTHERS", height/2, 270);
  } 



  if ((frameCount>730) && (frameCount<1120)) {
    background (0, 0, 0);
    image (Fondo2, 0, 0);
    textFont(Fuente1);
    textSize(Agrand);
    fill(rojo);
    textAlign(CENTER);
    text ("STRANGER", height/2, variables);
    text ("THINGS", height/2, variablet);
    Agrand  -= 0.5;
    variablet -=0.75;
    variables +=0.75;
  }

  if ((frameCount>1120) && (frameCount<1090)) {
    background (0, 0, 0);
  }
  if ((frameCount>1090) && (frameCount<1620)) {

    background (0, 0, 0);
    image (Fondo, 0, 0);
    textFont(Fuente2);
    textSize(10);
    fill(blanco, tt/4);
    textAlign(CENTER);
    text ("A NETFLIX ORIGINAL SERIES", height/2, width/2);
    tt += 1.5;
  }
}  
