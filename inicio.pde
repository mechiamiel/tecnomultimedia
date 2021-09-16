void inicializarvariables() {

  for (int i=0; i<15; i++) {
    imagenes[i]= loadImage( i + ".jpg");
  }

  estado = "presentacion";
  CreditosComenzar=false;
  NoGrita=false;
  NoSube=false;
  cinturonSiNo=false;
  perdonSiNo=false;
  siguienteI=false;
  siguienteII=false;
  CreditosReinicio1=false;
  boda=false;
  fin=false;
  siguienteIII=false;
  CreditosReinicio2=false;
  CreditosReinicio3=false;
  CreditosReinicio4=false;
  CreditosReinicio5=false;
}


void texto( String txt, PFont fuente2, int t, color c, float x, float y ) {
  pushStyle();
  textSize(t);
  textFont(fuente2);
  fill(c);
  text( txt, x, y );
  popStyle();
}
