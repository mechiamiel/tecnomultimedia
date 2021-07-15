//Presentación tp3  ojala sea suficiente - Mercedes Amiel
//https://youtu.be/a6ogjlU46VY

int i;
int ancho;
float cc;
int xaz;
int xam;
color c;
int x;

void setup() {
  size( 865, 450);
  i=0;
  ancho =50;
  xaz=0;
  xam=0;
  c = #000000;
  x= 25;
}

void draw() {

  for ( int i = 0; i < 100; i+=1 ) {

    if ( i % 2==0 ) { 
      fill(c);
    } else {  
      fill(255);
    }
    noStroke ();
    rect(i*x, 0, 50, height );
  }

  for ( int a = 510; a <mouseX; a+=10 ) {
    float c = map( a, 500, 865, 255, 0);
    fill (c);
    rect(a, 0, 40, height );
  }


  if (key=='s') {
    if (xaz < 1000)
      xaz +=2;
    if (xam < 1000)
      xam +=2;
    noStroke();
    fill(#0832FF);
    rect(xaz, 140, 100, 38);
    fill (#FAFF03);
    rect(xam, 270, 100, 38);
  }

  noStroke (); //rojo
  fill(#FF1008);
  rect(0, 390, 60, 60);

  fill(#03FF22); //verde
  rect(0, 0, 50, 50);

  fill(#FAFF03);//amarillo y violeta
  rect (80, 0, 40, 40);
  fill (#BF21FF);
  rect (130, 0, 40, 40);
  
}
void mouseClicked() {


  if ((mouseX >0) && (mouseY>350) && (mouseX<150) && (mouseY<450)) { //reinicio
    ancho =50;
    xaz=0;
    xam=0;
    c= #000000;
    x=25;
  }
  if ((mouseX >0) && (mouseY>0) && (mouseX<40) && (mouseY<40)) { //boton color
    c +=40;
  }
  if ((mouseX>60) && (mouseY>0) && (mouseX<120) && (mouseY<40)){ 
  x++;
}
if ((mouseX>130) && (mouseY>0) && (mouseX<170) && (mouseY<40)){
x--;
}
if ((mouseX>180) && (mouseY>0) && (mouseX<230) && (mouseY<40)){


}
}
